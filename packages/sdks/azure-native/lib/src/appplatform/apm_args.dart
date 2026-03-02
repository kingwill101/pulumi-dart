// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apm_properties.dart';

/// {@template pulumi_appplatform_apm_args_doc}
/// The set of arguments for Apm.
/// {@endtemplate}
/// {@macro pulumi_appplatform_apm_args_doc}
class ApmArgs {
  /// The name of the APM
  final pulumi.Input<String>? apmName;
  /// Properties of an APM
  final pulumi.Input<ApmProperties>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ApmArgs].
  /// [apmName] The name of the APM
  /// [properties] Properties of an APM
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  ApmArgs({
    this.apmName,
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apmName': ?apmName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ApmProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ApmArgs.fromMap(Map<String, dynamic> map) {
    return ApmArgs(
      apmName: map['apmName'] == null ? null : (map['apmName'] as String).input(),
      properties: map['properties'] == null ? null : (ApmProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

