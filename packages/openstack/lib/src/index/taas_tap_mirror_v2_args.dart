// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'taas_tap_mirror_v2_directions.dart';

/// {@template pulumi_index_taas_tap_mirror_v2_taas_tap_mirror_v2_args_doc}
/// The set of arguments for TaasTapMirrorV2.
/// {@endtemplate}
/// {@macro pulumi_index_taas_tap_mirror_v2_taas_tap_mirror_v2_args_doc}
class TaasTapMirrorV2Args {
  /// The human-readable description for the Tap Mirror.
  /// Changing this updates the description of the existing Tap Mirror.
  final pulumi.Input<String>? description;
  /// A block declaring the directions to be mirrored and their
  /// identifiers. One block has to be declared with at least one direction. Changing
  /// this creates a new Tap Mirror.
  final pulumi.Input<TaasTapMirrorV2Directions> directions;
  /// The type of the mirroring, can be `gre` or `erspanv1`.
  /// Changing this creates a new Tap Mirror.
  final pulumi.Input<String> mirrorType;
  /// The name of the Tap Mirror. Changing this updates the name of
  /// the existing Tap Mirror.
  final pulumi.Input<String>? name;
  /// The Port ID of the Tap Mirror, this will be the source of
  /// the mirrored traffic, and this traffic will be tunneled into the GRE or ERSPAN
  /// v1 tunnel. The tunnel itself is not starting from this port. Changing this
  /// creates a new Tap Mirror.
  final pulumi.Input<String> portId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an endpoint group. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// group.
  final pulumi.Input<String>? region;
  /// The remote IP of the Tap Mirror, this will be the remote
  /// end of the GRE or ERSPAN v1 tunnel. Changing this creates a new Tap Mirror.
  final pulumi.Input<String> remoteIp;
  /// The owner of the Tap Mirror. Required if admin wants to
  /// create a Tap Mirror for another project. Changing this creates a new Tap Mirror.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [TaasTapMirrorV2Args].
  /// [description] The human-readable description for the Tap Mirror.
  /// [directions] A block declaring the directions to be mirrored and their
  /// [mirrorType] The type of the mirroring, can be `gre` or `erspanv1`.
  /// [name] The name of the Tap Mirror. Changing this updates the name of
  /// [portId] The Port ID of the Tap Mirror, this will be the source of
  /// [region] The region in which to obtain the V2 Networking client.
  /// [remoteIp] The remote IP of the Tap Mirror, this will be the remote
  /// [tenantId] The owner of the Tap Mirror. Required if admin wants to
  TaasTapMirrorV2Args({
    String? description,
    required TaasTapMirrorV2Directions directions,
    required String mirrorType,
    String? name,
    required String portId,
    String? region,
    required String remoteIp,
    String? tenantId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      directions = pulumi.Input.asInput<TaasTapMirrorV2Directions>(directions),
      mirrorType = pulumi.Input.asInput<String>(mirrorType),
      name = pulumi.Input.asOptionalInput<String>(name),
      portId = pulumi.Input.asInput<String>(portId),
      region = pulumi.Input.asOptionalInput<String>(region),
      remoteIp = pulumi.Input.asInput<String>(remoteIp),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'directions': pulumi.Input.mapInputValue<TaasTapMirrorV2Directions, Map<String, dynamic>>(directions, (value) => value.toMap()),
      'mirrorType': mirrorType,
      'name': ?name,
      'portId': portId,
      'region': ?region,
      'remoteIp': remoteIp,
      'tenantId': ?tenantId,
    };
  }

  factory TaasTapMirrorV2Args.fromMap(Map<String, dynamic> map) {
    return TaasTapMirrorV2Args(
      description: map['description'] == null ? null : map['description'] as String,
      directions: TaasTapMirrorV2Directions.fromMap((map['directions'] as Map).cast<String, dynamic>()),
      mirrorType: map['mirrorType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      portId: map['portId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      remoteIp: map['remoteIp'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

