// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticsearch_get_zones_get_zones_args_doc}
/// Arguments for getZones.
/// {@endtemplate}
/// {@macro pulumi_elasticsearch_get_zones_get_zones_args_doc}
class GetZonesArgs {
  /// Indicate whether the zones can be used in a multi AZ configuration. Default to `false`. Multi AZ is usually used to launch Elasticsearch instances.
  final pulumi.Input<bool>? multi;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetZonesArgs].
  /// [multi] Indicate whether the zones can be used in a multi AZ configuration. Default to `false`. Multi AZ is usually used to launch Elasticsearch instances.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetZonesArgs({
    bool? multi,
    String? outputFile,
  }) :
      multi = pulumi.Input.asOptionalInput<bool>(multi),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'multi': ?multi,
      'outputFile': ?outputFile,
    };
  }

  factory GetZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetZonesArgs(
      multi: map['multi'] == null ? null : map['multi'] as bool,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

