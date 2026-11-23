import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_function_endpoint_args.dart';

/// An HTTPS endpoint with explicit routing to published Lambda Web Function revisions.
class WebFunctionEndpoint extends pulumi.ComponentResource {
  /// Hostname for a HomeRegion or MultiRegion endpoint, without `https://`. For PerRegion use
  /// regionalDomainNames.
  late final pulumi.Output<String?> domainName;
  /// ARN of the endpoint. Use it to scope IAM invocation permissions.
  late final pulumi.Output<String?> endpointArn;
  /// Hostnames without `https://` for individual serving Regions, keyed by Region code.
  late final pulumi.Output<Map<String, String>?> regionalDomainNames;

  /// Creates a new [WebFunctionEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebFunctionEndpoint]. {@macro pulumi_lambda_web_function_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebFunctionEndpoint(
    String name, {
    WebFunctionEndpointArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'awsx:lambda:WebFunctionEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.ComponentResourceOptions(version: '3.15.0').merge(options),
          remote: true,
        ) {
    domainName = registerOutput<String?>('domainName');
    endpointArn = registerOutput<String?>('endpointArn');
    regionalDomainNames = registerOutput<Map<String, String>?>('regionalDomainNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
