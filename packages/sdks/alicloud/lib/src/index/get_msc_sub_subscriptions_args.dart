// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_msc_sub_subscriptions_get_msc_sub_subscriptions_args_doc}
/// Arguments for getMscSubSubscriptions.
/// {@endtemplate}
/// {@macro pulumi_index_get_msc_sub_subscriptions_get_msc_sub_subscriptions_args_doc}
class GetMscSubSubscriptionsArgs {
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetMscSubSubscriptionsArgs].
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetMscSubSubscriptionsArgs({
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
    };
  }

  factory GetMscSubSubscriptionsArgs.fromMap(Map<String, dynamic> map) {
    return GetMscSubSubscriptionsArgs(
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

