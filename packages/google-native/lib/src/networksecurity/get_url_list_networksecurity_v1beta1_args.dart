// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_url_list_networksecurity_v1beta1_args_doc}
/// Arguments for getUrlList.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_url_list_networksecurity_v1beta1_args_doc}
class GetUrlListNetworksecurityV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> urlListId;

  /// Creates a new [GetUrlListNetworksecurityV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [urlListId] Required.
  GetUrlListNetworksecurityV1beta1Args({
    required String location,
    String? project,
    required String urlListId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       urlListId = pulumi.Input.asInput<String>(urlListId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'urlListId': urlListId,
    };
  }

  factory GetUrlListNetworksecurityV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetUrlListNetworksecurityV1beta1Args(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      urlListId: map['urlListId'] as String,
    );
  }
}
