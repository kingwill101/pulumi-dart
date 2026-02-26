// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../framework_cloud_control_detail/framework_cloud_control_detail.dart';

/// The set of arguments for Framework.
class FrameworkArgs {
  /// The details of the cloud controls directly added without any grouping in
  /// the framework.
  /// Structure is documented below.
  final Input<List<FrameworkCloudControlDetail>>? cloudControlDetails;

  /// The description of the framework. The maximum length is 2000 characters.
  final Input<String>? description;

  /// Display name of the framework. The maximum length is 200 characters.
  final Input<String>? displayName;

  /// ID of the framework.
  /// This is not the full name of the framework.
  /// This is the last part of the full name of the framework.
  final Input<String> frameworkId;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> organization;

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
      map['cloudControlDetails'] = Input.mapOptionalInputValue<
              List<FrameworkCloudControlDetail>, List<Map<String, dynamic>>>(
          cloudControlDetailsValue,
          (value) => Input.encodeList<FrameworkCloudControlDetail,
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
          Input.asOptionalInput<List<FrameworkCloudControlDetail>>(
              map['cloudControlDetails']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      frameworkId: Input.asInput<String>(map['frameworkId']),
      location: Input.asInput<String>(map['location']),
      organization: Input.asInput<String>(map['organization']),
    );
  }
}
