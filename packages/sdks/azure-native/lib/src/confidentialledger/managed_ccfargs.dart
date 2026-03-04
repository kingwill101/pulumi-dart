// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_ccfproperties.dart';

/// {@template pulumi_confidentialledger_managed_ccfargs_doc}
/// The set of arguments for ManagedCCF.
/// {@endtemplate}
/// {@macro pulumi_confidentialledger_managed_ccfargs_doc}
class ManagedCCFArgs {
  /// Name of the Managed CCF
  final pulumi.Input<String>? appName;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// Properties of Managed CCF Resource.
  final pulumi.Input<ManagedCCFProperties>? properties;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ManagedCCFArgs].
  /// [appName] Name of the Managed CCF
  /// [location] The geo-location where the resource lives
  /// [properties] Properties of Managed CCF Resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ManagedCCFArgs({
    this.appName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': ?appName,
      'location': ?location,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedCCFProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ManagedCCFArgs.fromMap(Map<String, dynamic> map) {
    return ManagedCCFArgs(
      appName: (() {
        final guardedValue = map['appName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedCCFProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
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
