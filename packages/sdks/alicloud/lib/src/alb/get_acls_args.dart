// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_get_acls_get_acls_args_doc}
/// Arguments for getAcls.
/// {@endtemplate}
/// {@macro pulumi_alb_get_acls_get_acls_args_doc}
class GetAclsArgs {
  /// The acl ids.
  final pulumi.Input<List<String>>? aclIds;

  /// The ACL Name.
  final pulumi.Input<String>? aclName;

  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;

  /// A list of Acl IDs.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by Acl name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Resource Group to Which the Number.
  final pulumi.Input<String>? resourceGroupId;

  /// The state of the ACL. Valid values:`Provisioning`,`Available`and`Configuring`.  `Provisioning`: The ACL is being created. `Available`: The ACL is available. `Configuring`: The ACL is being configured.
  final pulumi.Input<String>? status;

  /// Creates a new [GetAclsArgs].
  /// [aclIds] The acl ids.
  /// [aclName] The ACL Name.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Acl IDs.
  /// [nameRegex] A regex string to filter results by Acl name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] Resource Group to Which the Number.
  /// [status] The state of the ACL. Valid values:`Provisioning`,`Available`and`Configuring`.  `Provisioning`: The ACL is being created. `Available`: The ACL is available. `Configuring`: The ACL is being configured.
  GetAclsArgs({
    this.aclIds,
    this.aclName,
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclIds': ?aclIds,
      'aclName': ?aclName,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
    };
  }

  factory GetAclsArgs.fromMap(Map<String, dynamic> map) {
    return GetAclsArgs(
      aclIds: (() {
        final guardedValue = map['aclIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      aclName: (() {
        final guardedValue = map['aclName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
    );
  }
}
