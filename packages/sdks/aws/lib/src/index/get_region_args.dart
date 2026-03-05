// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_region_get_region_args_doc}
/// Arguments for getRegion.
/// {@endtemplate}
/// {@macro pulumi_index_get_region_get_region_args_doc}
class GetRegionArgs {
  /// EC2 endpoint of the region to select.
  final pulumi.Input<String>? endpoint;
  /// Region's name (e.g. `us-east-1`).
  final pulumi.Input<String>? id;
  /// Full name of the region to select. Use `region` instead.
  final pulumi.Input<String>? name;
  /// Full name of the region to select (e.g. `us-east-1`), and the region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetRegionArgs].
  /// [endpoint] EC2 endpoint of the region to select.
  /// [id] Region's name (e.g. `us-east-1`).
  /// [name] Full name of the region to select. Use `region` instead.
  /// [region] Full name of the region to select (e.g. `us-east-1`), and the region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetRegionArgs({
    this.endpoint,
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'id': ?id,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetRegionArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionArgs(
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

