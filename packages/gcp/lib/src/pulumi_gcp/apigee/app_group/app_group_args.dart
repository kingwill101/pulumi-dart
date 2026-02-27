// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_group_attribute/app_group_attribute.dart';

/// The set of arguments for AppGroup.
class AppGroupArgs {
  /// A list of attributes
  /// Structure is documented below.
  final pulumi.Input<List<AppGroupAttribute>>? attributes;

  /// Channel identifier identifies the owner maintaining this grouping.
  final pulumi.Input<String>? channelId;

  /// A reference to the associated storefront/marketplace.
  final pulumi.Input<String>? channelUri;

  /// App group name displayed in the UI
  final pulumi.Input<String>? displayName;

  /// Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._-$ %.
  final pulumi.Input<String>? name;

  /// The Apigee Organization associated with the Apigee app group,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;

  /// Valid values are active or inactive. Note that the status of the AppGroup should be updated via UpdateAppGroupRequest by setting the action as active or inactive.
  /// Possible values are: `active`, `inactive`.
  final pulumi.Input<String>? status;

  AppGroupArgs({
    this.attributes,
    this.channelId,
    this.channelUri,
    this.displayName,
    this.name,
    required this.orgId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = pulumi.Input.mapOptionalInputValue<
              List<AppGroupAttribute>, List<Map<String, dynamic>>>(
          attributesValue,
          (value) =>
              pulumi.Input.encodeList<AppGroupAttribute, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final channelIdValue = channelId;
    if (channelIdValue != null) {
      map['channelId'] = channelIdValue;
    }
    final channelUriValue = channelUri;
    if (channelUriValue != null) {
      map['channelUri'] = channelUriValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['orgId'] = orgId;
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory AppGroupArgs.fromMap(Map<String, dynamic> map) {
    return AppGroupArgs(
      attributes: pulumi.Input.asOptionalInput<List<AppGroupAttribute>>(
          map['attributes']),
      channelId: pulumi.Input.asOptionalInput<String>(map['channelId']),
      channelUri: pulumi.Input.asOptionalInput<String>(map['channelUri']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
    );
  }
}
