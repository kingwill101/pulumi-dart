import 'package:pulumi/pulumi.dart';
import 'deployment_args.dart';

/// Manages an API Gateway REST Deployment. A deployment is a snapshot of the REST API configuration. The deployment can then be published to callable endpoints via the <span pulumi-lang-nodejs="`aws.apigateway.Stage`" pulumi-lang-dotnet="`aws.apigateway.Stage`" pulumi-lang-go="`apigateway.Stage`" pulumi-lang-python="`apigateway.Stage`" pulumi-lang-yaml="`aws.apigateway.Stage`" pulumi-lang-java="`aws.apigateway.Stage`">`aws.apigateway.Stage`</span> resource and optionally managed further with the <span pulumi-lang-nodejs="`aws.apigateway.BasePathMapping`" pulumi-lang-dotnet="`aws.apigateway.BasePathMapping`" pulumi-lang-go="`apigateway.BasePathMapping`" pulumi-lang-python="`apigateway.BasePathMapping`" pulumi-lang-yaml="`aws.apigateway.BasePathMapping`" pulumi-lang-java="`aws.apigateway.BasePathMapping`">`aws.apigateway.BasePathMapping`</span> resource, <span pulumi-lang-nodejs="`aws.apigateway.DomainName`" pulumi-lang-dotnet="`aws.apigateway.DomainName`" pulumi-lang-go="`apigateway.DomainName`" pulumi-lang-python="`apigateway.DomainName`" pulumi-lang-yaml="`aws.apigateway.DomainName`" pulumi-lang-java="`aws.apigateway.DomainName`">`aws.apigateway.DomainName`</span> resource, and <span pulumi-lang-nodejs="`awsApiMethodSettings`" pulumi-lang-dotnet="`AwsApiMethodSettings`" pulumi-lang-go="`awsApiMethodSettings`" pulumi-lang-python="`aws_api_method_settings`" pulumi-lang-yaml="`awsApiMethodSettings`" pulumi-lang-java="`awsApiMethodSettings`">`aws_api_method_settings`</span> resource. For more information, see the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-deploy-api.html).
///
/// To properly capture all REST API configuration in a deployment, this resource must have dependencies on all prior resources that manage resources/paths, methods, integrations, etc.
///
/// * For REST APIs that are configured via OpenAPI specification (<span pulumi-lang-nodejs="`aws.apigateway.RestApi`" pulumi-lang-dotnet="`aws.apigateway.RestApi`" pulumi-lang-go="`apigateway.RestApi`" pulumi-lang-python="`apigateway.RestApi`" pulumi-lang-yaml="`aws.apigateway.RestApi`" pulumi-lang-java="`aws.apigateway.RestApi`">`aws.apigateway.RestApi`</span> resource <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument), no special dependency setup is needed beyond referencing the  <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> attribute of that resource unless additional resources have further customized the REST API.
/// * When the REST API configuration involves other resources (<span pulumi-lang-nodejs="`aws.apigateway.Integration`" pulumi-lang-dotnet="`aws.apigateway.Integration`" pulumi-lang-go="`apigateway.Integration`" pulumi-lang-python="`apigateway.Integration`" pulumi-lang-yaml="`aws.apigateway.Integration`" pulumi-lang-java="`aws.apigateway.Integration`">`aws.apigateway.Integration`</span> resource), the dependency setup can be done with implicit resource references in the <span pulumi-lang-nodejs="`triggers`" pulumi-lang-dotnet="`Triggers`" pulumi-lang-go="`triggers`" pulumi-lang-python="`triggers`" pulumi-lang-yaml="`triggers`" pulumi-lang-java="`triggers`">`triggers`</span> argument or explicit resource references using the [resource `dependsOn` custom option](https://www.pulumi.com/docs/intro/concepts/resources/#dependson). The <span pulumi-lang-nodejs="`triggers`" pulumi-lang-dotnet="`Triggers`" pulumi-lang-go="`triggers`" pulumi-lang-python="`triggers`" pulumi-lang-yaml="`triggers`" pulumi-lang-java="`triggers`">`triggers`</span> argument should be preferred over <span pulumi-lang-nodejs="`dependsOn`" pulumi-lang-dotnet="`DependsOn`" pulumi-lang-go="`dependsOn`" pulumi-lang-python="`depends_on`" pulumi-lang-yaml="`dependsOn`" pulumi-lang-java="`dependsOn`">`depends_on`</span>, since <span pulumi-lang-nodejs="`dependsOn`" pulumi-lang-dotnet="`DependsOn`" pulumi-lang-go="`dependsOn`" pulumi-lang-python="`depends_on`" pulumi-lang-yaml="`dependsOn`" pulumi-lang-java="`dependsOn`">`depends_on`</span> can only capture dependency ordering and will not cause the resource to recreate (redeploy the REST API) with upstream configuration changes.
///
///
/// ## Example Usage
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.apigateway.Deployment`" pulumi-lang-dotnet="`aws.apigateway.Deployment`" pulumi-lang-go="`apigateway.Deployment`" pulumi-lang-python="`apigateway.Deployment`" pulumi-lang-yaml="`aws.apigateway.Deployment`" pulumi-lang-java="`aws.apigateway.Deployment`">`aws.apigateway.Deployment`</span> using `REST-API-ID/DEPLOYMENT-ID`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/deployment:Deployment example aabbccddee/1122334
/// ```
///
/// The <span pulumi-lang-nodejs="`variables`" pulumi-lang-dotnet="`Variables`" pulumi-lang-go="`variables`" pulumi-lang-python="`variables`" pulumi-lang-yaml="`variables`" pulumi-lang-java="`variables`">`variables`</span> arguments cannot be imported. Use the <span pulumi-lang-nodejs="`aws.apigateway.Stage`" pulumi-lang-dotnet="`aws.apigateway.Stage`" pulumi-lang-go="`apigateway.Stage`" pulumi-lang-python="`apigateway.Stage`" pulumi-lang-yaml="`aws.apigateway.Stage`" pulumi-lang-java="`aws.apigateway.Stage`">`aws.apigateway.Stage`</span> resource to import and manage stages.
///
/// The <span pulumi-lang-nodejs="`triggers`" pulumi-lang-dotnet="`Triggers`" pulumi-lang-go="`triggers`" pulumi-lang-python="`triggers`" pulumi-lang-yaml="`triggers`" pulumi-lang-java="`triggers`">`triggers`</span> argument cannot be imported.
class DeploymentType extends CustomResource {
  /// Creation date of the deployment
  late final Output<String> createdDate;

  /// Description of the deployment.
  late final Output<String?> description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// REST API identifier.
  late final Output<String> restApi;

  /// Map of arbitrary keys and values that, when changed, will trigger a redeployment.
  late final Output<Map<String, String>?> triggers;

  /// Map to set on the related stage.
  late final Output<Map<String, String>?> variables;

  DeploymentType(
    String name, {
    DeploymentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/deployment:Deployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdDate = registerOutput<String>('createdDate');
    this.description = registerOutput<String?>('description');
    this.region = registerOutput<String>('region');
    this.restApi = registerOutput<String>('restApi');
    this.triggers = registerOutput<Map<String, String>?>('triggers');
    this.variables = registerOutput<Map<String, String>?>('variables');
  }
}
