// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sae_get_grey_tag_routes_get_grey_tag_routes_args_doc}
/// Arguments for getGreyTagRoutes.
/// {@endtemplate}
/// {@macro pulumi_sae_get_grey_tag_routes_get_grey_tag_routes_args_doc}
class GetGreyTagRoutesArgs {
  /// The ID  of the SAE Application.
  final pulumi.Input<String> appId;

  /// A list of GreyTagRoute IDs.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by GreyTagRoute name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetGreyTagRoutesArgs].
  /// [appId] The ID  of the SAE Application.
  /// [ids] A list of GreyTagRoute IDs.
  /// [nameRegex] A regex string to filter results by GreyTagRoute name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetGreyTagRoutesArgs({
    required this.appId,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetGreyTagRoutesArgs.fromMap(Map<String, dynamic> map) {
    return GetGreyTagRoutesArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
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
