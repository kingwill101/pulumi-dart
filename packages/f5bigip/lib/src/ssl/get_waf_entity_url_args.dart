// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_waf_entity_url_cross_origin_requests_enforcement.dart';
import 'get_waf_entity_url_method_override.dart';

/// {@template pulumi_ssl_get_waf_entity_url_get_waf_entity_url_args_doc}
/// Arguments for getWafEntityUrl.
/// {@endtemplate}
/// {@macro pulumi_ssl_get_waf_entity_url_get_waf_entity_url_args_doc}
class GetWafEntityUrlArgs {
  /// A list of options that enables your web-application to share data with a website hosted on a
  /// different domain.
  final pulumi.Input<List<GetWafEntityUrlCrossOriginRequestsEnforcement>>? crossOriginRequestsEnforcements;
  /// A description of the URL.
  final pulumi.Input<String>? description;
  /// Select a Method for the URL to create an API endpoint. Default is : *.
  final pulumi.Input<String>? method;
  /// A list of methods that are allowed or disallowed for a specific URL.
  final pulumi.Input<List<GetWafEntityUrlMethodOverride>>? methodOverrides;
  /// WAF entity URL name.
  final pulumi.Input<String> name;
  /// If true then any violation associated to the respective URL will not be enforced, and the request will not be considered illegal.
  final pulumi.Input<bool>? performStaging;
  /// Specifies whether the protocol for the URL is 'http' or 'https'. Default is: http.
  final pulumi.Input<String>? protocol;
  /// List of Attack Signature Ids which are disabled for this particular URL.
  final pulumi.Input<List<int>>? signatureOverridesDisables;
  /// Specifies whether the parameter is an 'explicit' or a 'wildcard' attribute. Default is: wildcard.
  final pulumi.Input<String>? type;

  /// Creates a new [GetWafEntityUrlArgs].
  /// [crossOriginRequestsEnforcements] A list of options that enables your web-application to share data with a website hosted on a
  /// [description] A description of the URL.
  /// [method] Select a Method for the URL to create an API endpoint. Default is : *.
  /// [methodOverrides] A list of methods that are allowed or disallowed for a specific URL.
  /// [name] WAF entity URL name.
  /// [performStaging] If true then any violation associated to the respective URL will not be enforced, and the request will not be considered illegal.
  /// [protocol] Specifies whether the protocol for the URL is 'http' or 'https'. Default is: http.
  /// [signatureOverridesDisables] List of Attack Signature Ids which are disabled for this particular URL.
  /// [type] Specifies whether the parameter is an 'explicit' or a 'wildcard' attribute. Default is: wildcard.
  GetWafEntityUrlArgs({
    List<GetWafEntityUrlCrossOriginRequestsEnforcement>? crossOriginRequestsEnforcements,
    String? description,
    String? method,
    List<GetWafEntityUrlMethodOverride>? methodOverrides,
    required String name,
    bool? performStaging,
    String? protocol,
    List<int>? signatureOverridesDisables,
    String? type,
  }) :
      crossOriginRequestsEnforcements = pulumi.Input.asOptionalInput<List<GetWafEntityUrlCrossOriginRequestsEnforcement>>(crossOriginRequestsEnforcements),
      description = pulumi.Input.asOptionalInput<String>(description),
      method = pulumi.Input.asOptionalInput<String>(method),
      methodOverrides = pulumi.Input.asOptionalInput<List<GetWafEntityUrlMethodOverride>>(methodOverrides),
      name = pulumi.Input.asInput<String>(name),
      performStaging = pulumi.Input.asOptionalInput<bool>(performStaging),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      signatureOverridesDisables = pulumi.Input.asOptionalInput<List<int>>(signatureOverridesDisables),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossOriginRequestsEnforcements': ?pulumi.Input.mapOptionalInputValue<List<GetWafEntityUrlCrossOriginRequestsEnforcement>, List<Map<String, dynamic>>>(crossOriginRequestsEnforcements, (value) => pulumi.Input.encodeList<GetWafEntityUrlCrossOriginRequestsEnforcement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'method': ?method,
      'methodOverrides': ?pulumi.Input.mapOptionalInputValue<List<GetWafEntityUrlMethodOverride>, List<Map<String, dynamic>>>(methodOverrides, (value) => pulumi.Input.encodeList<GetWafEntityUrlMethodOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'performStaging': ?performStaging,
      'protocol': ?protocol,
      'signatureOverridesDisables': ?signatureOverridesDisables,
      'type': ?type,
    };
  }

  factory GetWafEntityUrlArgs.fromMap(Map<String, dynamic> map) {
    return GetWafEntityUrlArgs(
      crossOriginRequestsEnforcements: map['crossOriginRequestsEnforcements'] == null ? null : pulumi.Input.decodeList<GetWafEntityUrlCrossOriginRequestsEnforcement>(map['crossOriginRequestsEnforcements'], (value) => GetWafEntityUrlCrossOriginRequestsEnforcement.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      method: map['method'] == null ? null : map['method'] as String,
      methodOverrides: map['methodOverrides'] == null ? null : pulumi.Input.decodeList<GetWafEntityUrlMethodOverride>(map['methodOverrides'], (value) => GetWafEntityUrlMethodOverride.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      performStaging: map['performStaging'] == null ? null : map['performStaging'] as bool,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      signatureOverridesDisables: map['signatureOverridesDisables'] == null ? null : (map['signatureOverridesDisables'] as List).cast<int>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

