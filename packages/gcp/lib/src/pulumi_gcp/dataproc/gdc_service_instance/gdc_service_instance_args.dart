// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../gdc_service_instance_gdce_cluster/gdc_service_instance_gdce_cluster.dart';

/// The set of arguments for GdcServiceInstance.
class GdcServiceInstanceArgs {
  /// User-provided human-readable name to be used in user interfaces.
  final Input<String>? displayName;

  /// Gdce cluster information.
  /// Structure is documented below.
  final Input<GdcServiceInstanceGdceCluster>? gdceCluster;

  /// The labels to associate with this service instance. Labels may be used for filtering and billing tracking.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Location of the resource.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Requested service account to associate with ServiceInstance.
  final Input<String>? serviceAccount;

  /// Id of the service instance.
  final Input<String> serviceInstanceId;

  /// Spark-specific service instance configuration.
  final Input<Map<String, dynamic>>? sparkServiceInstanceConfig;

  GdcServiceInstanceArgs({
    this.displayName,
    this.gdceCluster,
    this.labels,
    required this.location,
    this.project,
    this.serviceAccount,
    required this.serviceInstanceId,
    this.sparkServiceInstanceConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final gdceClusterValue = gdceCluster;
    if (gdceClusterValue != null) {
      map['gdceCluster'] = Input.mapOptionalInputValue<
          GdcServiceInstanceGdceCluster,
          Map<String, dynamic>>(gdceClusterValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    map['serviceInstanceId'] = serviceInstanceId;
    final sparkServiceInstanceConfigValue = sparkServiceInstanceConfig;
    if (sparkServiceInstanceConfigValue != null) {
      map['sparkServiceInstanceConfig'] = sparkServiceInstanceConfigValue;
    }
    return map;
  }

  factory GdcServiceInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GdcServiceInstanceArgs(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      gdceCluster: Input.asOptionalInput<GdcServiceInstanceGdceCluster>(
          map['gdceCluster']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      serviceInstanceId: Input.asInput<String>(map['serviceInstanceId']),
      sparkServiceInstanceConfig: Input.asOptionalInput<Map<String, dynamic>>(
          map['sparkServiceInstanceConfig']),
    );
  }
}
