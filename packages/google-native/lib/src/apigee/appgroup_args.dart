// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute.dart';

/// {@template pulumi_apigee_v1_appgroup_args_doc}
/// The set of arguments for Appgroup.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_appgroup_args_doc}
class AppgroupArgs {
  /// A list of attributes
  final pulumi.Input<List<GoogleCloudApigeeV1Attribute>>? attributes;

  /// channel identifier identifies the owner maintaing this grouping.
  final pulumi.Input<String>? channelId;

  /// A reference to the associated storefront/marketplace.
  final pulumi.Input<String>? channelUri;

  /// app group name displayed in the UI
  final pulumi.Input<String>? displayName;

  /// Immutable. Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._\-$ %.
  final pulumi.Input<String>? name;

  /// Immutable. the org the app group is created
  final pulumi.Input<String>? organization;
  final pulumi.Input<String> organizationId;

  /// Creates a new [AppgroupArgs].
  /// [attributes] A list of attributes
  /// [channelId] channel identifier identifies the owner maintaing this grouping.
  /// [channelUri] A reference to the associated storefront/marketplace.
  /// [displayName] app group name displayed in the UI
  /// [name] Immutable. Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._\-$ %.
  /// [organization] Immutable. the org the app group is created
  /// [organizationId] Required.
  AppgroupArgs({
    List<GoogleCloudApigeeV1Attribute>? attributes,
    String? channelId,
    String? channelUri,
    String? displayName,
    String? name,
    String? organization,
    required String organizationId,
  })  : attributes =
            pulumi.Input.asOptionalInput<List<GoogleCloudApigeeV1Attribute>>(
                attributes),
        channelId = pulumi.Input.asOptionalInput<String>(channelId),
        channelUri = pulumi.Input.asOptionalInput<String>(channelUri),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        name = pulumi.Input.asOptionalInput<String>(name),
        organization = pulumi.Input.asOptionalInput<String>(organization),
        organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudApigeeV1Attribute>, List<Map<String, dynamic>>>(
          attributesValue,
          (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1Attribute,
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
      attributes: map['attributes'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudApigeeV1Attribute>(
              map['attributes'],
              (value) => GoogleCloudApigeeV1Attribute.fromMap(
                  (value as Map).cast<String, dynamic>())),
      channelId: map['channelId'] == null ? null : map['channelId'] as String,
      channelUri:
          map['channelUri'] == null ? null : map['channelUri'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      organization:
          map['organization'] == null ? null : map['organization'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
