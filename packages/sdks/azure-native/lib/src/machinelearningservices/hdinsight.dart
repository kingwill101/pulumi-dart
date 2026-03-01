// ignore_for_file: unused_element, unnecessary_cast

import 'hdinsight_properties.dart';

/// A HDInsight compute.
class HDInsight {
  /// Location for the underlying compute
  final String? computeLocation;
  /// The type of compute
  /// Expected value is 'HDInsight'.
  final String computeType;
  /// The description of the Machine Learning compute.
  final String? description;
  /// Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.
  final bool? disableLocalAuth;
  /// HDInsight compute properties
  final HDInsightProperties? properties;
  /// ARM resource id of the underlying compute
  final String? resourceId;

  /// Creates a new [HDInsight].
  /// [computeLocation] Location for the underlying compute
  /// [computeType] The type of compute
  /// [description] The description of the Machine Learning compute.
  /// [disableLocalAuth] Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.
  /// [properties] HDInsight compute properties
  /// [resourceId] ARM resource id of the underlying compute
  HDInsight({
    this.computeLocation,
    required this.computeType,
    this.description,
    this.disableLocalAuth,
    this.properties,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeLocation': ?computeLocation,
      'computeType': computeType,
      'description': ?description,
      'disableLocalAuth': ?disableLocalAuth,
      'properties': ?properties == null ? null : properties!.toMap(),
      'resourceId': ?resourceId,
    };
  }

  factory HDInsight.fromMap(Map<String, dynamic> map) {
    return HDInsight(
      computeLocation: map['computeLocation'] == null ? null : map['computeLocation'] as String,
      computeType: map['computeType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      disableLocalAuth: map['disableLocalAuth'] == null ? null : map['disableLocalAuth'] as bool,
      properties: map['properties'] == null ? null : HDInsightProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

