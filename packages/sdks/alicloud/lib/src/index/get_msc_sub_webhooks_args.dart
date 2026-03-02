// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_msc_sub_webhooks_get_msc_sub_webhooks_args_doc}
/// Arguments for getMscSubWebhooks.
/// {@endtemplate}
/// {@macro pulumi_index_get_msc_sub_webhooks_get_msc_sub_webhooks_args_doc}
class GetMscSubWebhooksArgs {
  /// A list of Webhook IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Webhook name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetMscSubWebhooksArgs].
  /// [ids] A list of Webhook IDs.
  /// [nameRegex] A regex string to filter results by Webhook name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetMscSubWebhooksArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetMscSubWebhooksArgs.fromMap(Map<String, dynamic> map) {
    return GetMscSubWebhooksArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

