// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_deployment_cloud_control_metadata_cloud_control_details_parameter.dart';

class FrameworkDeploymentCloudControlMetadataCloudControlDetails {
  /// Major revision of cloudcontrol
  final String majorRevisionId;

  /// The name of the CloudControl in the format:
  /// “organizations/{organization}/locations/{location}/
  /// cloudControls/{cloud-control}”
  final String name;

  /// Parameters is a key-value pair that is required by the CloudControl. The
  /// specification of these parameters will be present in cloudcontrol.Eg: {
  /// "name": "location","value": "us-west-1"}.
  /// Structure is documented below.
  final List<
          FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter>?
      parameters;

  /// Creates a new [FrameworkDeploymentCloudControlMetadataCloudControlDetails].
  /// [majorRevisionId] Major revision of cloudcontrol
  /// [name] The name of the CloudControl in the format:
  /// [parameters] Parameters is a key-value pair that is required by the CloudControl. The
  FrameworkDeploymentCloudControlMetadataCloudControlDetails({
    required this.majorRevisionId,
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['majorRevisionId'] = majorRevisionId;
    map['name'] = name;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.encodeList<
          FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory FrameworkDeploymentCloudControlMetadataCloudControlDetails.fromMap(
      Map<String, dynamic> map) {
    return FrameworkDeploymentCloudControlMetadataCloudControlDetails(
      majorRevisionId: map['majorRevisionId'] as String,
      name: map['name'] as String,
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<
                  FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter>(
              map['parameters'],
              (value) =>
                  FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
