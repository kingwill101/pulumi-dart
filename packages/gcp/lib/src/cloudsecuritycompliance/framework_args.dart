// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_cloud_control_detail.dart';

/// {@template pulumi_cloudsecuritycompliance_framework_framework_args_doc}
/// The set of arguments for Framework.
/// {@endtemplate}
/// {@macro pulumi_cloudsecuritycompliance_framework_framework_args_doc}
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

  /// Creates a new [FrameworkArgs].
  /// [cloudControlDetails] The details of the cloud controls directly added without any grouping in
  /// [description] The description of the framework. The maximum length is 2000 characters.
  /// [displayName] Display name of the framework. The maximum length is 200 characters.
  /// [frameworkId] ID of the framework.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [organization] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  FrameworkArgs({
    List<FrameworkCloudControlDetail>? cloudControlDetails,
    String? description,
    String? displayName,
    required String frameworkId,
    required String location,
    required String organization,
  }) : cloudControlDetails =
           pulumi.Input.asOptionalInput<List<FrameworkCloudControlDetail>>(
             cloudControlDetails,
           ),
       description = pulumi.Input.asOptionalInput<String>(description),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       frameworkId = pulumi.Input.asInput<String>(frameworkId),
       location = pulumi.Input.asInput<String>(location),
       organization = pulumi.Input.asInput<String>(organization);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudControlDetails':
          ?pulumi.Input.mapOptionalInputValue<
            List<FrameworkCloudControlDetail>,
            List<Map<String, dynamic>>
          >(
            cloudControlDetails,
            (value) =>
                pulumi.Input.encodeList<
                  FrameworkCloudControlDetail,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'displayName': ?displayName,
      'frameworkId': frameworkId,
      'location': location,
      'organization': organization,
    };
  }

  factory FrameworkArgs.fromMap(Map<String, dynamic> map) {
    return FrameworkArgs(
      cloudControlDetails: map['cloudControlDetails'] == null
          ? null
          : pulumi.Input.decodeList<FrameworkCloudControlDetail>(
              map['cloudControlDetails'],
              (value) => FrameworkCloudControlDetail.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      frameworkId: map['frameworkId'] as String,
      location: map['location'] as String,
      organization: map['organization'] as String,
    );
  }
}
