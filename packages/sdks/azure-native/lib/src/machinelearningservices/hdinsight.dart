// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hdinsight_properties.dart';

/// A HDInsight compute.
class HDInsight {
  /// Location for the underlying compute
  final pulumi.Input<String?>? computeLocation;
  /// The type of compute
  /// Expected value is 'HDInsight'.
  final pulumi.Input<String> computeType;
  /// The description of the Machine Learning compute.
  final pulumi.Input<String?>? description;
  /// Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.
  final pulumi.Input<bool?>? disableLocalAuth;
  /// HDInsight compute properties
  final pulumi.Input<HDInsightProperties?>? properties;
  /// ARM resource id of the underlying compute
  final pulumi.Input<String?>? resourceId;

  /// Creates a new [HDInsight].
  /// [computeLocation] Location for the underlying compute
  /// [computeType] The type of compute
  /// [description] The description of the Machine Learning compute.
  /// [disableLocalAuth] Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.
  /// [properties] HDInsight compute properties
  /// [resourceId] ARM resource id of the underlying compute
  const HDInsight({
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
      'properties': ?pulumi.Input.mapOptionalInputValue<HDInsightProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceId': ?resourceId,
    };
  }

  factory HDInsight.fromMap(Map<String, dynamic> map) {
    return HDInsight(
      computeLocation: (() { final guardedValue = map['computeLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeType: pulumi.Input.fromValue(map['computeType'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HDInsightProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
