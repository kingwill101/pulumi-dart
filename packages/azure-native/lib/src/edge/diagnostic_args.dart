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
  final pulumi.Input<AzureResourceManagerCommonTypesExtendedLocation>? extendedLocation;
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
    String? diagnosticName,
    AzureResourceManagerCommonTypesExtendedLocation? extendedLocation,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      diagnosticName = pulumi.Input.asOptionalInput<String>(diagnosticName),
      extendedLocation = pulumi.Input.asOptionalInput<AzureResourceManagerCommonTypesExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnosticName': ?diagnosticName,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<AzureResourceManagerCommonTypesExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DiagnosticArgs.fromMap(Map<String, dynamic> map) {
    return DiagnosticArgs(
      diagnosticName: map['diagnosticName'] == null ? null : map['diagnosticName'] as String,
      extendedLocation: map['extendedLocation'] == null ? null : AzureResourceManagerCommonTypesExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

