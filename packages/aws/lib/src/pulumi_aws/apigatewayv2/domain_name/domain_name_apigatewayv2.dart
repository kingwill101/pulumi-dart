import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_name_domain_name_configuration/domain_name_domain_name_configuration.dart';
import '../domain_name_mutual_tls_authentication/domain_name_mutual_tls_authentication_apigatewayv2.dart';
import 'domain_name_apigatewayv2_args.dart';

/// Manages an Amazon API Gateway Version 2 domain name.
/// More information can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html).
///
/// > **Note:** This resource establishes ownership of and the TLS settings for
/// a particular domain name. An API stage can be associated with the domain name using the `aws.apigatewayv2.ApiMapping` resource.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### Associated Route 53 Resource Record
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigatewayv2.DomainName` using the domain name. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/domainName:DomainName example ws-api.example.com
/// ```
class DomainNameApigatewayv2 extends pulumi.CustomResource {
  /// [API mapping selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-mapping-selection-expressions) for the domain name.
  late final pulumi.Output<String> apiMappingSelectionExpression;

  /// ARN of the domain name.
  late final pulumi.Output<String> arn;

  /// Domain name. Must be between 1 and 512 characters in length.
  late final pulumi.Output<String> domainName;

  /// Domain name configuration. See below.
  late final pulumi.Output<DomainNameDomainNameConfiguration>
      domainNameConfiguration;

  /// Mutual TLS authentication configuration for the domain name.
  late final pulumi.Output<DomainNameMutualTlsAuthenticationApigatewayv2?>
      mutualTlsAuthentication;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Mode to route traffic for the domain name. Valid values: `API_MAPPING_ONLY`, `ROUTING_RULE_ONLY`, `ROUTING_RULE_THEN_API_MAPPING`.
  late final pulumi.Output<String> routingMode;

  /// Map of tags to assign to the domain name. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  DomainNameApigatewayv2(
    String name, {
    DomainNameApigatewayv2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/domainName:DomainName',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiMappingSelectionExpression =
        registerOutput<String>('apiMappingSelectionExpression');
    this.arn = registerOutput<String>('arn');
    this.domainName = registerOutput<String>('domainName');
    this.domainNameConfiguration =
        registerOutput<DomainNameDomainNameConfiguration>(
            'domainNameConfiguration');
    this.mutualTlsAuthentication =
        registerOutput<DomainNameMutualTlsAuthenticationApigatewayv2?>(
            'mutualTlsAuthentication');
    this.region = registerOutput<String>('region');
    this.routingMode = registerOutput<String>('routingMode');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
