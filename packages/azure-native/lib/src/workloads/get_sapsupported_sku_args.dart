// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_sapsupported_sku_args_doc}
/// Arguments for getSAPSupportedSku.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_sapsupported_sku_args_doc}
class GetSAPSupportedSkuArgs {
  /// The geo-location where the resource is to be created.
  final pulumi.Input<String> appLocation;
  /// The database type. Eg: HANA, DB2, etc
  final pulumi.Input<String> databaseType;
  /// The deployment type. Eg: SingleServer/ThreeTier
  final pulumi.Input<String> deploymentType;
  /// Defines the environment type - Production/Non Production.
  final pulumi.Input<String> environment;
  /// The high availability type.
  final pulumi.Input<String>? highAvailabilityType;
  /// The name of Azure region.
  final pulumi.Input<String> location;
  /// Defines the SAP Product type.
  final pulumi.Input<String> sapProduct;

  /// Creates a new [GetSAPSupportedSkuArgs].
  /// [appLocation] The geo-location where the resource is to be created.
  /// [databaseType] The database type. Eg: HANA, DB2, etc
  /// [deploymentType] The deployment type. Eg: SingleServer/ThreeTier
  /// [environment] Defines the environment type - Production/Non Production.
  /// [highAvailabilityType] The high availability type.
  /// [location] The name of Azure region.
  /// [sapProduct] Defines the SAP Product type.
  GetSAPSupportedSkuArgs({
    required String appLocation,
    required String databaseType,
    required String deploymentType,
    required String environment,
    String? highAvailabilityType,
    required String location,
    required String sapProduct,
  }) :
      appLocation = pulumi.Input.asInput<String>(appLocation),
      databaseType = pulumi.Input.asInput<String>(databaseType),
      deploymentType = pulumi.Input.asInput<String>(deploymentType),
      environment = pulumi.Input.asInput<String>(environment),
      highAvailabilityType = pulumi.Input.asOptionalInput<String>(highAvailabilityType),
      location = pulumi.Input.asInput<String>(location),
      sapProduct = pulumi.Input.asInput<String>(sapProduct);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLocation': appLocation,
      'databaseType': databaseType,
      'deploymentType': deploymentType,
      'environment': environment,
      'highAvailabilityType': ?highAvailabilityType,
      'location': location,
      'sapProduct': sapProduct,
    };
  }

  factory GetSAPSupportedSkuArgs.fromMap(Map<String, dynamic> map) {
    return GetSAPSupportedSkuArgs(
      appLocation: map['appLocation'] as String,
      databaseType: map['databaseType'] as String,
      deploymentType: map['deploymentType'] as String,
      environment: map['environment'] as String,
      highAvailabilityType: map['highAvailabilityType'] == null ? null : map['highAvailabilityType'] as String,
      location: map['location'] as String,
      sapProduct: map['sapProduct'] as String,
    );
  }
}

