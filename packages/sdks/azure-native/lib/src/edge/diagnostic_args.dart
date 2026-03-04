// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location.dart';

/// {@template pulumi_edge_diagnostic_args_doc}
/// The set of arguments for Diagnostic.
/// {@endtemplate}
/// {@macro pulumi_edge_diagnostic_args_doc}
class DiagnosticArgs {
  /// Name of Diagnostic.
  final pulumi.Input<String>? diagnosticName;

  /// The complex type of the extended location.
  final pulumi.Input<AzureResourceManagerCommonTypesExtendedLocation>?
  extendedLocation;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DiagnosticArgs].
  /// [diagnosticName] Name of Diagnostic.
  /// [extendedLocation] The complex type of the extended location.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  DiagnosticArgs({
    this.diagnosticName,
    this.extendedLocation,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnosticName': ?diagnosticName,
      'extendedLocation':
          ?pulumi.Input.mapOptionalInputValue<
            AzureResourceManagerCommonTypesExtendedLocation,
            Map<String, dynamic>
          >(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DiagnosticArgs.fromMap(Map<String, dynamic> map) {
    return DiagnosticArgs(
      diagnosticName: (() {
        final guardedValue = map['diagnosticName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      extendedLocation: (() {
        final guardedValue = map['extendedLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureResourceManagerCommonTypesExtendedLocation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
