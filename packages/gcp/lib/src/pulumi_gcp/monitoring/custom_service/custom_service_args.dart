// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../custom_service_telemetry/custom_service_telemetry.dart';

/// The set of arguments for CustomService.
class CustomServiceArgs {
  /// Name used for UI elements listing this Service.
  final pulumi.Input<String>? displayName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// An optional service ID to use. If not given, the server will generate a
  /// service ID.
  final pulumi.Input<String>? serviceId;

  /// Configuration for how to query telemetry on a Service.
  /// Structure is documented below.
  final pulumi.Input<CustomServiceTelemetry>? telemetry;

  /// Labels which have been used to annotate the service. Label keys must start
  /// with a letter. Label keys and values may contain lowercase letters,
  /// numbers, underscores, and dashes. Label keys and values have a maximum
  /// length of 63 characters, and must be less than 128 bytes in size. Up to 64
  /// label entries may be stored. For labels which do not have a semantic value,
  /// the empty string may be supplied for the label value.
  final pulumi.Input<Map<String, String>>? userLabels;

  CustomServiceArgs({
    this.displayName,
    this.project,
    this.serviceId,
    this.telemetry,
    this.userLabels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serviceIdValue = serviceId;
    if (serviceIdValue != null) {
      map['serviceId'] = serviceIdValue;
    }
    final telemetryValue = telemetry;
    if (telemetryValue != null) {
      map['telemetry'] = pulumi.Input.mapOptionalInputValue<
          CustomServiceTelemetry,
          Map<String, dynamic>>(telemetryValue, (value) => value.toMap());
    }
    final userLabelsValue = userLabels;
    if (userLabelsValue != null) {
      map['userLabels'] = userLabelsValue;
    }
    return map;
  }

  factory CustomServiceArgs.fromMap(Map<String, dynamic> map) {
    return CustomServiceArgs(
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceId: pulumi.Input.asOptionalInput<String>(map['serviceId']),
      telemetry: pulumi.Input.asOptionalInput<CustomServiceTelemetry>(
          map['telemetry']),
      userLabels:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['userLabels']),
    );
  }
}
