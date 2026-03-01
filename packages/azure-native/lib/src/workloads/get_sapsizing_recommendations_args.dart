// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_sapsizing_recommendations_args_doc}
/// Arguments for getSAPSizingRecommendations.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_sapsizing_recommendations_args_doc}
class GetSAPSizingRecommendationsArgs {
  /// The geo-location where the resource is to be created.
  final pulumi.Input<String> appLocation;
  /// The database type.
  final pulumi.Input<String> databaseType;
  /// The database memory configuration.
  final pulumi.Input<double> dbMemory;
  /// The DB scale method.
  final pulumi.Input<String>? dbScaleMethod;
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
  /// The SAP Application Performance Standard measurement.
  final pulumi.Input<double> saps;

  /// Creates a new [GetSAPSizingRecommendationsArgs].
  /// [appLocation] The geo-location where the resource is to be created.
  /// [databaseType] The database type.
  /// [dbMemory] The database memory configuration.
  /// [dbScaleMethod] The DB scale method.
  /// [deploymentType] The deployment type. Eg: SingleServer/ThreeTier
  /// [environment] Defines the environment type - Production/Non Production.
  /// [highAvailabilityType] The high availability type.
  /// [location] The name of Azure region.
  /// [sapProduct] Defines the SAP Product type.
  /// [saps] The SAP Application Performance Standard measurement.
  GetSAPSizingRecommendationsArgs({
    required String appLocation,
    required String databaseType,
    required double dbMemory,
    String? dbScaleMethod,
    required String deploymentType,
    required String environment,
    String? highAvailabilityType,
    required String location,
    required String sapProduct,
    required double saps,
  }) :
      appLocation = pulumi.Input.asInput<String>(appLocation),
      databaseType = pulumi.Input.asInput<String>(databaseType),
      dbMemory = pulumi.Input.asInput<double>(dbMemory),
      dbScaleMethod = pulumi.Input.asOptionalInput<String>(dbScaleMethod),
      deploymentType = pulumi.Input.asInput<String>(deploymentType),
      environment = pulumi.Input.asInput<String>(environment),
      highAvailabilityType = pulumi.Input.asOptionalInput<String>(highAvailabilityType),
      location = pulumi.Input.asInput<String>(location),
      sapProduct = pulumi.Input.asInput<String>(sapProduct),
      saps = pulumi.Input.asInput<double>(saps);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLocation': appLocation,
      'databaseType': databaseType,
      'dbMemory': dbMemory,
      'dbScaleMethod': ?dbScaleMethod,
      'deploymentType': deploymentType,
      'environment': environment,
      'highAvailabilityType': ?highAvailabilityType,
      'location': location,
      'sapProduct': sapProduct,
      'saps': saps,
    };
  }

  factory GetSAPSizingRecommendationsArgs.fromMap(Map<String, dynamic> map) {
    return GetSAPSizingRecommendationsArgs(
      appLocation: map['appLocation'] as String,
      databaseType: map['databaseType'] as String,
      dbMemory: map['dbMemory'] as double,
      dbScaleMethod: map['dbScaleMethod'] == null ? null : map['dbScaleMethod'] as String,
      deploymentType: map['deploymentType'] as String,
      environment: map['environment'] as String,
      highAvailabilityType: map['highAvailabilityType'] == null ? null : map['highAvailabilityType'] as String,
      location: map['location'] as String,
      sapProduct: map['sapProduct'] as String,
      saps: map['saps'] as double,
    );
  }
}

