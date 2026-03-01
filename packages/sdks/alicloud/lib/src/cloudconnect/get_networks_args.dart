// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudconnect_get_networks_get_networks_args_doc}
/// Arguments for getNetworks.
/// {@endtemplate}
/// {@macro pulumi_cloudconnect_get_networks_get_networks_args_doc}
class GetNetworksArgs {
  /// A list of CCN instances IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter CCN instances by name.
  final pulumi.Input<String>? nameRegex;
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetNetworksArgs].
  /// [ids] A list of CCN instances IDs.
  /// [nameRegex] A regex string to filter CCN instances by name.
  /// [outputFile] Optional.
  GetNetworksArgs({
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

  factory GetNetworksArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworksArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

