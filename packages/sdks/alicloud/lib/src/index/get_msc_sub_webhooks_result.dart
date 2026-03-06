// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_msc_sub_webhooks_webhook.dart';

/// Result data returned by getMscSubWebhooks.
class GetMscSubWebhooksResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Webhook names.
  final List<String> names;
  final String? outputFile;
  /// A list of Msc Sub Webhooks. Each element contains the following attributes:
  final List<GetMscSubWebhooksWebhook> webhooks;

  /// Creates a new [GetMscSubWebhooksResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Webhook names.
  /// [outputFile] Optional.
  /// [webhooks] A list of Msc Sub Webhooks. Each element contains the following attributes:
  const GetMscSubWebhooksResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.webhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'webhooks': pulumi.Input.encodeList<GetMscSubWebhooksWebhook, Map<String, dynamic>>(webhooks, (value) => value.toMap()),
    };
  }

  factory GetMscSubWebhooksResult.fromMap(Map<String, dynamic> map) {
    return GetMscSubWebhooksResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      webhooks: pulumi.Input.decodeList<GetMscSubWebhooksWebhook>(map['webhooks']!, (value) => GetMscSubWebhooksWebhook.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

