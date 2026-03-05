// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_networks_network.dart';

/// Result data returned by getNetworks.
class GetNetworksResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of CCN instances IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of CCN instances names.
  final List<String> names;
  /// A list of CCN instances. Each element contains the following attributes:
  final List<GetNetworksNetwork> networks;
  final String? outputFile;

  /// Creates a new [GetNetworksResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of CCN instances IDs.
  /// [nameRegex] Optional.
  /// [names] A list of CCN instances names.
  /// [networks] A list of CCN instances. Each element contains the following attributes:
  /// [outputFile] Optional.
  GetNetworksResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    required this.networks,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'networks': pulumi.Input.encodeList<GetNetworksNetwork, Map<String, dynamic>>(networks, (value) => value.toMap()),
      'outputFile': ?outputFile,
    };
  }

  factory GetNetworksResult.fromMap(Map<String, dynamic> map) {
    return GetNetworksResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      networks: pulumi.Input.decodeList<GetNetworksNetwork>(map['networks']!, (value) => GetNetworksNetwork.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

