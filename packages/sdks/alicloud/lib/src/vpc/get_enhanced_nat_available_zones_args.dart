// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_enhanced_nat_available_zones_get_enhanced_nat_available_zones_args_doc}
/// Arguments for getEnhancedNatAvailableZones.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_enhanced_nat_available_zones_get_enhanced_nat_available_zones_args_doc}
class GetEnhancedNatAvailableZonesArgs {
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetEnhancedNatAvailableZonesArgs].
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetEnhancedNatAvailableZonesArgs({
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
    };
  }

  factory GetEnhancedNatAvailableZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetEnhancedNatAvailableZonesArgs(
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

