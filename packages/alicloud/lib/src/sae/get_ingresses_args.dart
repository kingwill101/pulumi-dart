// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sae_get_ingresses_get_ingresses_args_doc}
/// Arguments for getIngresses.
/// {@endtemplate}
/// {@macro pulumi_sae_get_ingresses_get_ingresses_args_doc}
class GetIngressesArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Ingress IDs.
  final pulumi.Input<List<String>>? ids;
  /// The Id of Namespace.It can contain 2 to 32 lowercase characters.The value is in format `{RegionId}:{namespace}`
  final pulumi.Input<String> namespaceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetIngressesArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Ingress IDs.
  /// [namespaceId] The Id of Namespace.It can contain 2 to 32 lowercase characters.The value is in format `{RegionId}:{namespace}`
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetIngressesArgs({
    bool? enableDetails,
    List<String>? ids,
    required String namespaceId,
    String? outputFile,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      namespaceId = pulumi.Input.asInput<String>(namespaceId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'namespaceId': namespaceId,
      'outputFile': ?outputFile,
    };
  }

  factory GetIngressesArgs.fromMap(Map<String, dynamic> map) {
    return GetIngressesArgs(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      namespaceId: map['namespaceId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

