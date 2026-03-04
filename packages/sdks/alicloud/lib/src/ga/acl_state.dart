// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_acl_entry.dart';

/// Input properties used for looking up and filtering Acl resources.
class AclState {
  /// The entries of the Acl. See `acl_entries` below. **NOTE:** "Field `acl_entries` has been deprecated from provider version 1.190.0 and it will be removed in the future version. Please use the new resource `alicloud.ga.AclEntryAttachment`."
  final pulumi.Input<List<AclAclEntry>>? aclEntries;

  /// The name of the ACL. The name must be `2` to `128` characters in length, and can contain letters, digits, periods (.), hyphens (-) and underscores (_). It must start with a letter.
  final pulumi.Input<String>? aclName;

  /// The IP version. Valid values: `IPv4` and `IPv6`.
  final pulumi.Input<String>? addressIpVersion;

  /// The dry run.
  final pulumi.Input<bool>? dryRun;

  /// The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  final pulumi.Input<String>? resourceGroupId;

  /// The status of the resource.
  final pulumi.Input<String>? status;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AclState].
  /// [aclEntries] The entries of the Acl. See `acl_entries` below. **NOTE:** "Field `acl_entries` has been deprecated from provider version 1.190.0 and it will be removed in the future version. Please use the new resource `alicloud.ga.AclEntryAttachment`."
  /// [aclName] The name of the ACL. The name must be `2` to `128` characters in length, and can contain letters, digits, periods (.), hyphens (-) and underscores (_). It must start with a letter.
  /// [addressIpVersion] The IP version. Valid values: `IPv4` and `IPv6`.
  /// [dryRun] The dry run.
  /// [resourceGroupId] The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  /// [status] The status of the resource.
  /// [tags] A mapping of tags to assign to the resource.
  AclState({
    this.aclEntries,
    this.aclName,
    this.addressIpVersion,
    this.dryRun,
    this.resourceGroupId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclEntries':
          ?pulumi.Input.mapOptionalInputValue<
            List<AclAclEntry>,
            List<Map<String, dynamic>>
          >(
            aclEntries,
            (value) =>
                pulumi.Input.encodeList<AclAclEntry, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'aclName': ?aclName,
      'addressIpVersion': ?addressIpVersion,
      'dryRun': ?dryRun,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory AclState.fromMap(Map<String, dynamic> map) {
    return AclState(
      aclEntries: (() {
        final guardedValue = map['aclEntries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AclAclEntry>(
            guardedValue,
            (value) =>
                AclAclEntry.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      aclName: (() {
        final guardedValue = map['aclName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      addressIpVersion: (() {
        final guardedValue = map['addressIpVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
