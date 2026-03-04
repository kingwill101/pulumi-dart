// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bgp_networks_network.dart';

/// Result data returned by getBgpNetworks.
class GetBgpNetworksResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetBgpNetworksNetwork> networks;
  final String? outputFile;
  final String? routerId;
  final String? status;

  /// Creates a new [GetBgpNetworksResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [networks] Required.
  /// [outputFile] Optional.
  /// [routerId] Optional.
  /// [status] Optional.
  GetBgpNetworksResult({
    required this.id,
    required this.ids,
    required this.networks,
    this.outputFile,
    this.routerId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'networks':
          pulumi.Input.encodeList<GetBgpNetworksNetwork, Map<String, dynamic>>(
            networks,
            (value) => value.toMap(),
          ),
      'outputFile': ?outputFile,
      'routerId': ?routerId,
      'status': ?status,
    };
  }

  factory GetBgpNetworksResult.fromMap(Map<String, dynamic> map) {
    return GetBgpNetworksResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      networks: pulumi.Input.decodeList<GetBgpNetworksNetwork>(
        map['networks']!,
        (value) => GetBgpNetworksNetwork.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      routerId: (() {
        final guardedValue = map['routerId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
