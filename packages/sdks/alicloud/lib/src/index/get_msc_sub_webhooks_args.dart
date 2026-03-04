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
  GetMscSubWebhooksArgs({this.ids, this.nameRegex, this.outputFile});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetMscSubWebhooksArgs.fromMap(Map<String, dynamic> map) {
    return GetMscSubWebhooksArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
