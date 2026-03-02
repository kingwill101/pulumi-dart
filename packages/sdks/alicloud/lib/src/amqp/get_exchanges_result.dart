// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_exchanges_exchange.dart';

/// Result data returned by getExchanges.
class GetExchangesResult {
  final List<GetExchangesExchange> exchanges;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String virtualHostName;

  /// Creates a new [GetExchangesResult].
  /// [exchanges] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [virtualHostName] Required.
  GetExchangesResult({
    required this.exchanges,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.virtualHostName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exchanges': pulumi.Input.encodeList<GetExchangesExchange, Map<String, dynamic>>(exchanges, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'virtualHostName': virtualHostName,
    };
  }

  factory GetExchangesResult.fromMap(Map<String, dynamic> map) {
    return GetExchangesResult(
      exchanges: pulumi.Input.decodeList<GetExchangesExchange>(map['exchanges'], (value) => GetExchangesExchange.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      virtualHostName: map['virtualHostName'] as String,
    );
  }
}

