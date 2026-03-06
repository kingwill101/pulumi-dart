// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_applicationinsights_get_live_token_args_doc}
/// Arguments for getLiveToken.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_get_live_token_args_doc}
class GetLiveTokenArgs {
  /// The identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetLiveTokenArgs].
  /// [resourceUri] The identifier of the resource.
  const GetLiveTokenArgs({
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
    };
  }

  factory GetLiveTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetLiveTokenArgs(
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}

