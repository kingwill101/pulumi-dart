// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_default_action/web_acl_default_action2.dart';
import '../web_acl_logging_configuration/web_acl_logging_configuration2.dart';
import '../web_acl_rule/web_acl_rule2.dart';

/// The set of arguments for WebAcl.
class WebAclArgs2 {
  /// The action that you want AWS WAF Regional to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL.
  final Input<WebAclDefaultAction2> defaultAction;

  /// Configuration block to enable WAF logging. Detailed below.
  final Input<WebAclLoggingConfiguration2>? loggingConfiguration;

  /// The name or description for the Amazon CloudWatch metric of this web ACL.
  final Input<String> metricName;

  /// The name or description of the web ACL.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Set of configuration blocks containing rules for the web ACL. Detailed below.
  final Input<List<WebAclRule2>>? rules;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  WebAclArgs2({
    required this.defaultAction,
    this.loggingConfiguration,
    required this.metricName,
    this.name,
    this.region,
    this.rules,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultAction'] =
        Input.mapInputValue<WebAclDefaultAction2, Map<String, dynamic>>(
            defaultAction, (value) => value.toMap());
    final loggingConfigurationValue = loggingConfiguration;
    if (loggingConfigurationValue != null) {
      map['loggingConfiguration'] = Input.mapOptionalInputValue<
              WebAclLoggingConfiguration2, Map<String, dynamic>>(
          loggingConfigurationValue, (value) => value.toMap());
    }
    map['metricName'] = metricName;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = Input.mapOptionalInputValue<List<WebAclRule2>,
              List<Map<String, dynamic>>>(
          rulesValue,
          (value) => Input.encodeList<WebAclRule2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory WebAclArgs2.fromMap(Map<String, dynamic> map) {
    return WebAclArgs2(
      defaultAction: Input.asInput<WebAclDefaultAction2>(map['defaultAction']),
      loggingConfiguration: Input.asOptionalInput<WebAclLoggingConfiguration2>(
          map['loggingConfiguration']),
      metricName: Input.asInput<String>(map['metricName']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      rules: Input.asOptionalInput<List<WebAclRule2>>(map['rules']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
