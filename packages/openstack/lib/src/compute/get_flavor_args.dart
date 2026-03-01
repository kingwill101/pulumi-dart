// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_flavor_get_flavor_args_doc}
/// Arguments for getFlavor.
/// {@endtemplate}
/// {@macro pulumi_compute_get_flavor_get_flavor_args_doc}
class GetFlavorArgs {
  /// The description of the flavor.
  final pulumi.Input<String>? description;
  /// The exact amount of disk (in gigabytes).
  final pulumi.Input<int>? disk;
  /// The ID of the flavor. Conflicts with the `name`,
  /// `min_ram` and `min_disk`
  final pulumi.Input<String>? flavorId;
  /// The flavor visibility.
  final pulumi.Input<bool>? isPublic;
  /// The minimum amount of disk (in gigabytes). Conflicts
  /// with the `flavor_id`.
  final pulumi.Input<int>? minDisk;
  /// The minimum amount of RAM (in megabytes). Conflicts
  /// with the `flavor_id`.
  final pulumi.Input<int>? minRam;
  /// The name of the flavor. Conflicts with the `flavor_id`.
  final pulumi.Input<String>? name;
  /// The exact amount of RAM (in megabytes).
  final pulumi.Input<int>? ram;
  /// The region in which to obtain the V2 Compute client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The `rx_tx_factor` of the flavor.
  final pulumi.Input<double>? rxTxFactor;
  /// The amount of swap (in gigabytes).
  final pulumi.Input<int>? swap;
  /// The amount of VCPUs.
  final pulumi.Input<int>? vcpus;

  /// Creates a new [GetFlavorArgs].
  /// [description] The description of the flavor.
  /// [disk] The exact amount of disk (in gigabytes).
  /// [flavorId] The ID of the flavor. Conflicts with the `name`,
  /// [isPublic] The flavor visibility.
  /// [minDisk] The minimum amount of disk (in gigabytes). Conflicts
  /// [minRam] The minimum amount of RAM (in megabytes). Conflicts
  /// [name] The name of the flavor. Conflicts with the `flavor_id`.
  /// [ram] The exact amount of RAM (in megabytes).
  /// [region] The region in which to obtain the V2 Compute client.
  /// [rxTxFactor] The `rx_tx_factor` of the flavor.
  /// [swap] The amount of swap (in gigabytes).
  /// [vcpus] The amount of VCPUs.
  GetFlavorArgs({
    String? description,
    int? disk,
    String? flavorId,
    bool? isPublic,
    int? minDisk,
    int? minRam,
    String? name,
    int? ram,
    String? region,
    double? rxTxFactor,
    int? swap,
    int? vcpus,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      disk = pulumi.Input.asOptionalInput<int>(disk),
      flavorId = pulumi.Input.asOptionalInput<String>(flavorId),
      isPublic = pulumi.Input.asOptionalInput<bool>(isPublic),
      minDisk = pulumi.Input.asOptionalInput<int>(minDisk),
      minRam = pulumi.Input.asOptionalInput<int>(minRam),
      name = pulumi.Input.asOptionalInput<String>(name),
      ram = pulumi.Input.asOptionalInput<int>(ram),
      region = pulumi.Input.asOptionalInput<String>(region),
      rxTxFactor = pulumi.Input.asOptionalInput<double>(rxTxFactor),
      swap = pulumi.Input.asOptionalInput<int>(swap),
      vcpus = pulumi.Input.asOptionalInput<int>(vcpus);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disk': ?disk,
      'flavorId': ?flavorId,
      'isPublic': ?isPublic,
      'minDisk': ?minDisk,
      'minRam': ?minRam,
      'name': ?name,
      'ram': ?ram,
      'region': ?region,
      'rxTxFactor': ?rxTxFactor,
      'swap': ?swap,
      'vcpus': ?vcpus,
    };
  }

  factory GetFlavorArgs.fromMap(Map<String, dynamic> map) {
    return GetFlavorArgs(
      description: map['description'] == null ? null : map['description'] as String,
      disk: map['disk'] == null ? null : map['disk'] as int,
      flavorId: map['flavorId'] == null ? null : map['flavorId'] as String,
      isPublic: map['isPublic'] == null ? null : map['isPublic'] as bool,
      minDisk: map['minDisk'] == null ? null : map['minDisk'] as int,
      minRam: map['minRam'] == null ? null : map['minRam'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      ram: map['ram'] == null ? null : map['ram'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      rxTxFactor: map['rxTxFactor'] == null ? null : map['rxTxFactor'] as double,
      swap: map['swap'] == null ? null : map['swap'] as int,
      vcpus: map['vcpus'] == null ? null : map['vcpus'] as int,
    );
  }
}

