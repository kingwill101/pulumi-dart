// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_amqp_get_exchanges_get_exchanges_args_doc}
/// Arguments for getExchanges.
/// {@endtemplate}
/// {@macro pulumi_amqp_get_exchanges_get_exchanges_args_doc}
class GetExchangesArgs {
  /// A list of Exchange IDs. Its element value is same as Exchange Name.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by Exchange name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of virtual host where an exchange resides.
  final pulumi.Input<String> virtualHostName;

  /// Creates a new [GetExchangesArgs].
  /// [ids] A list of Exchange IDs. Its element value is same as Exchange Name.
  /// [instanceId] The ID of the instance.
  /// [nameRegex] A regex string to filter results by Exchange name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [virtualHostName] The name of virtual host where an exchange resides.
  const GetExchangesArgs({
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.outputFile,
    required this.virtualHostName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'virtualHostName': virtualHostName,
    };
  }

  factory GetExchangesArgs.fromMap(Map<String, dynamic> map) {
    return GetExchangesArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualHostName: pulumi.Input.fromValue(map['virtualHostName'] as String),
    );
  }
}

