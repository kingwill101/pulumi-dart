// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TargetSite.
class TargetSiteArgs {
  /// The unique id of the data store.
  final Input<String> dataStoreId;

  /// If set to false, a<span pulumi-lang-nodejs=" uriPattern " pulumi-lang-dotnet=" UriPattern " pulumi-lang-go=" uriPattern " pulumi-lang-python=" uri_pattern " pulumi-lang-yaml=" uriPattern " pulumi-lang-java=" uriPattern "> uri_pattern </span>is generated to include all pages whose
  /// address contains the provided_uri_pattern. If set to true, an<span pulumi-lang-nodejs=" uriPattern
  /// " pulumi-lang-dotnet=" UriPattern
  /// " pulumi-lang-go=" uriPattern
  /// " pulumi-lang-python=" uri_pattern
  /// " pulumi-lang-yaml=" uriPattern
  /// " pulumi-lang-java=" uriPattern
  /// "> uri_pattern
  /// </span>is generated to try to be an exact match of the<span pulumi-lang-nodejs=" providedUriPattern " pulumi-lang-dotnet=" ProvidedUriPattern " pulumi-lang-go=" providedUriPattern " pulumi-lang-python=" provided_uri_pattern " pulumi-lang-yaml=" providedUriPattern " pulumi-lang-java=" providedUriPattern "> provided_uri_pattern </span>or
  /// just the specific page if the<span pulumi-lang-nodejs=" providedUriPattern " pulumi-lang-dotnet=" ProvidedUriPattern " pulumi-lang-go=" providedUriPattern " pulumi-lang-python=" provided_uri_pattern " pulumi-lang-yaml=" providedUriPattern " pulumi-lang-java=" providedUriPattern "> provided_uri_pattern </span>is a specific one.<span pulumi-lang-nodejs="
  /// providedUriPattern " pulumi-lang-dotnet="
  /// ProvidedUriPattern " pulumi-lang-go="
  /// providedUriPattern " pulumi-lang-python="
  /// provided_uri_pattern " pulumi-lang-yaml="
  /// providedUriPattern " pulumi-lang-java="
  /// providedUriPattern ">
  /// provided_uri_pattern </span>is always normalized to generate the URI pattern to
  /// be used by the search engine.
  final Input<bool>? exactMatch;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The user provided URI pattern from which the <span pulumi-lang-nodejs="`generatedUriPattern`" pulumi-lang-dotnet="`GeneratedUriPattern`" pulumi-lang-go="`generatedUriPattern`" pulumi-lang-python="`generated_uri_pattern`" pulumi-lang-yaml="`generatedUriPattern`" pulumi-lang-java="`generatedUriPattern`">`generated_uri_pattern`</span> is
  /// generated.
  final Input<String> providedUriPattern;

  /// The possible target site types.
  /// Possible values are: `INCLUDE`, `EXCLUDE`.
  final Input<String>? type;

  TargetSiteArgs({
    required this.dataStoreId,
    this.exactMatch,
    required this.location,
    this.project,
    required this.providedUriPattern,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataStoreId'] = dataStoreId;
    final exactMatchValue = exactMatch;
    if (exactMatchValue != null) {
      map['exactMatch'] = exactMatchValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['providedUriPattern'] = providedUriPattern;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory TargetSiteArgs.fromMap(Map<String, dynamic> map) {
    return TargetSiteArgs(
      dataStoreId: Input.asInput<String>(map['dataStoreId']),
      exactMatch: Input.asOptionalInput<bool>(map['exactMatch']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      providedUriPattern: Input.asInput<String>(map['providedUriPattern']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
