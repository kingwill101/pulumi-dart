import 'package:pulumi/pulumi.dart' as pulumi;
import 'rest_apiargs.dart';
import 'package:pulumi_aws/apigateway.dart' as pulumi_aws_apigateway;

/// The RestAPI component offers a simple interface for creating a fully functional API Gateway REST API. The
/// REST API can define any number of routes, each of which maps a path and HTTP method to one of (1) an event
/// hander route that invokes a Lambda Function (2) a local path route which uploads local files into an S3 bucket
/// and serves them or (3) an integration target such as an HTTP proxy or service integration.
class RestAPI extends pulumi.ComponentResource {
  /// The underlying RestAPI resource.
  late final pulumi.Output<pulumi_aws_apigateway.RestApi?> api;
  /// The underlying RestAPIPolicy resource.
  late final pulumi.Output<pulumi_aws_apigateway.RestApiPolicy?> apiPolicy;
  /// The underlying Deployment resource.
  late final pulumi.Output<pulumi_aws_apigateway.DeploymentType?> deployment;
  /// The underlying Stage resource.
  late final pulumi.Output<pulumi_aws_apigateway.Stage?> stage;
  /// The URL where the Rest API is exposed.
  late final pulumi.Output<String?> url;

  /// Creates a new [RestAPI].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RestAPI]. {@macro pulumi_index_rest_apiargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  RestAPI(
    String name, {
    RestAPIArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'aws-apigateway:index:RestAPI',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.ComponentResourceOptions(),
          remote: true,
        ) {
    api = registerOutput<pulumi_aws_apigateway.RestApi?>('api');
    apiPolicy = registerOutput<pulumi_aws_apigateway.RestApiPolicy?>('apiPolicy');
    deployment = registerOutput<pulumi_aws_apigateway.DeploymentType?>('deployment');
    stage = registerOutput<pulumi_aws_apigateway.Stage?>('stage');
    url = registerOutput<String?>('url');
  }
}
