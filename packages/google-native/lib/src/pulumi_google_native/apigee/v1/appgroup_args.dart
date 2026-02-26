// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_apigee_v1_attribute.dart';

/// The set of arguments for Appgroup.
class AppgroupArgs {
  /// A list of attributes
  final Input<List<GoogleCloudApigeeV1Attribute>>? attributes;

  /// channel identifier identifies the owner maintaing this grouping.
  final Input<String>? channelId;

  /// A reference to the associated storefront/marketplace.
  final Input<String>? channelUri;

  /// app group name displayed in the UI
  final Input<String>? displayName;

  /// Immutable. Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._\-$ %.
  final Input<String>? name;

  /// Immutable. the org the app group is created
  final Input<String>? organization;
  final Input<String> organizationId;

  AppgroupArgs({
    this.attributes,
    this.channelId,
    this.channelUri,
    this.displayName,
    this.name,
    this.organization,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = Input.mapOptionalInputValue<
              List<GoogleCloudApigeeV1Attribute>, List<Map<String, dynamic>>>(
          attributesValue,
          (value) => Input.encodeList<GoogleCloudApigeeV1Attribute,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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
    final organizationValue = organization;
    if (organizationValue != null) {
      map['organization'] = organizationValue;
    }
    map['organizationId'] = organizationId;
    return map;
  }

  factory AppgroupArgs.fromMap(Map<String, dynamic> map) {
    return AppgroupArgs(
      attributes: Input.asOptionalInput<List<GoogleCloudApigeeV1Attribute>>(
          map['attributes']),
      channelId: Input.asOptionalInput<String>(map['channelId']),
      channelUri: Input.asOptionalInput<String>(map['channelUri']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      name: Input.asOptionalInput<String>(map['name']),
      organization: Input.asOptionalInput<String>(map['organization']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
