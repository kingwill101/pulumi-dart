// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../framework_cloud_control_detail/framework_cloud_control_detail.dart';

/// The set of arguments for Framework.
class FrameworkArgs {
  /// The details of the cloud controls directly added without any grouping in
  /// the framework.
  /// Structure is documented below.
  final pulumi.Input<List<FrameworkCloudControlDetail>>? cloudControlDetails;

  /// The description of the framework. The maximum length is 2000 characters.
  final pulumi.Input<String>? description;

  /// Display name of the framework. The maximum length is 200 characters.
  final pulumi.Input<String>? displayName;

  /// ID of the framework.
  /// This is not the full name of the framework.
  /// This is the last part of the full name of the framework.
  final pulumi.Input<String> frameworkId;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> organization;

  FrameworkArgs({
    this.cloudControlDetails,
    this.description,
    this.displayName,
    required this.frameworkId,
    required this.location,
    required this.organization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudControlDetailsValue = cloudControlDetails;
    if (cloudControlDetailsValue != null) {
      map['cloudControlDetails'] = pulumi.Input.mapOptionalInputValue<
              List<FrameworkCloudControlDetail>, List<Map<String, dynamic>>>(
          cloudControlDetailsValue,
          (value) => pulumi.Input.encodeList<FrameworkCloudControlDetail,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['frameworkId'] = frameworkId;
    map['location'] = location;
    map['organization'] = organization;
    return map;
  }

  factory FrameworkArgs.fromMap(Map<String, dynamic> map) {
    return FrameworkArgs(
      cloudControlDetails:
          pulumi.Input.asOptionalInput<List<FrameworkCloudControlDetail>>(
              map['cloudControlDetails']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      frameworkId: pulumi.Input.asInput<String>(map['frameworkId']),
      location: pulumi.Input.asInput<String>(map['location']),
      organization: pulumi.Input.asInput<String>(map['organization']),
    );
  }
}
