// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_group_attribute/app_group_attribute.dart';

/// The set of arguments for AppGroup.
class AppGroupArgs {
  /// A list of attributes
  /// Structure is documented below.
  final Input<List<AppGroupAttribute>>? attributes;

  /// Channel identifier identifies the owner maintaining this grouping.
  final Input<String>? channelId;

  /// A reference to the associated storefront/marketplace.
  final Input<String>? channelUri;

  /// App group name displayed in the UI
  final Input<String>? displayName;

  /// Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._-$ %.
  final Input<String>? name;

  /// The Apigee Organization associated with the Apigee app group,
  /// in the format `organizations/{{org_name}}`.
  final Input<String> orgId;

  /// Valid values are active or inactive. Note that the status of the AppGroup should be updated via UpdateAppGroupRequest by setting the action as active or inactive.
  /// Possible values are: <span pulumi-lang-nodejs="`active`" pulumi-lang-dotnet="`Active`" pulumi-lang-go="`active`" pulumi-lang-python="`active`" pulumi-lang-yaml="`active`" pulumi-lang-java="`active`">`active`</span>, <span pulumi-lang-nodejs="`inactive`" pulumi-lang-dotnet="`Inactive`" pulumi-lang-go="`inactive`" pulumi-lang-python="`inactive`" pulumi-lang-yaml="`inactive`" pulumi-lang-java="`inactive`">`inactive`</span>.
  final Input<String>? status;

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
      map['attributes'] = Input.mapOptionalInputValue<List<AppGroupAttribute>,
              List<Map<String, dynamic>>>(
          attributesValue,
          (value) => Input.encodeList<AppGroupAttribute, Map<String, dynamic>>(
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
      attributes:
          Input.asOptionalInput<List<AppGroupAttribute>>(map['attributes']),
      channelId: Input.asOptionalInput<String>(map['channelId']),
      channelUri: Input.asOptionalInput<String>(map['channelUri']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      name: Input.asOptionalInput<String>(map['name']),
      orgId: Input.asInput<String>(map['orgId']),
      status: Input.asOptionalInput<String>(map['status']),
    );
  }
}
