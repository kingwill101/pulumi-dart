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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetMscSubWebhooksArgs.fromMap(Map<String, dynamic> map) {
    return GetMscSubWebhooksArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

