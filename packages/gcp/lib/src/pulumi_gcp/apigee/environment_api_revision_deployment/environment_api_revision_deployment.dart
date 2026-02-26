import 'package:pulumi/pulumi.dart';
import 'environment_api_revision_deployment_args.dart';

/// Deploys a specific Apigee API Proxy revision to a given Apigee environment.
///
///
/// To get more information about EnvironmentApiRevisionDeployment, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.apis.revisions.deployments/deploy)
/// * How-to Guides
/// * [Deploying an API proxy](https://cloud.google.com/apigee/docs/api-platform/deploy/ui-deploy-new#apigee-api)
///
/// ## Example Usage
///
/// ### Apigee Environment Api Revision Deployment Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const proxyDeploymentBasic = new gcp.apigee.EnvironmentApiRevisionDeployment("proxy_deployment_basic", {
/// orgId: "my-org",
/// environment: "dev",
/// api: "hello-proxy",
/// revision: 1,
/// override: true,
/// sequencedRollout: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// proxy_deployment_basic = gcp.apigee.EnvironmentApiRevisionDeployment("proxy_deployment_basic",
/// org_id="my-org",
/// environment="dev",
/// api="hello-proxy",
/// revision=1,
/// override=True,
/// sequenced_rollout=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var proxyDeploymentBasic = new Gcp.Apigee.EnvironmentApiRevisionDeployment("proxy_deployment_basic", new()
/// {
/// OrgId = "my-org",
/// Environment = "dev",
/// Api = "hello-proxy",
/// Revision = 1,
/// Override = true,
/// SequencedRollout = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigee.NewEnvironmentApiRevisionDeployment(ctx, "proxy_deployment_basic", &apigee.EnvironmentApiRevisionDeploymentArgs{
/// OrgId:            pulumi.String("my-org"),
/// Environment:      pulumi.String("dev"),
/// Api:              pulumi.String("hello-proxy"),
/// Revision:         pulumi.Int(1),
/// Override:         pulumi.Bool(true),
/// SequencedRollout: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.apigee.EnvironmentApiRevisionDeployment;
/// import com.pulumi.gcp.apigee.EnvironmentApiRevisionDeploymentArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var proxyDeploymentBasic = new EnvironmentApiRevisionDeployment("proxyDeploymentBasic", EnvironmentApiRevisionDeploymentArgs.builder()
/// .orgId("my-org")
/// .environment("dev")
/// .api("hello-proxy")
/// .revision(1)
/// .override(true)
/// .sequencedRollout(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// proxyDeploymentBasic:
/// type: gcp:apigee:EnvironmentApiRevisionDeployment
/// name: proxy_deployment_basic
/// properties:
/// orgId: my-org
/// environment: dev
/// api: hello-proxy
/// revision: 1
/// override: true
/// sequencedRollout: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// EnvironmentApiRevisionDeployment can be imported using any of these accepted formats:
///
/// * `organizations/{{org_id}}/environments/{{environment}}/apis/{{api}}/revisions/{{revision}}`
///
/// * `{{org_id}}/{{environment}}/{{api}}/{{revision}}`
///
/// * `{{id}}`
///
/// When using the `pulumi import` command, EnvironmentApiRevisionDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentApiRevisionDeployment:EnvironmentApiRevisionDeployment default organizations/{{org_id}}/environments/{{environment}}/apis/{{api}}/revisions/{{revision}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentApiRevisionDeployment:EnvironmentApiRevisionDeployment default {{org_id}}/{{environment}}/{{api}}/{{revision}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentApiRevisionDeployment:EnvironmentApiRevisionDeployment default {{id}}
/// ```
class EnvironmentApiRevisionDeployment extends CustomResource {
  /// Apigee API proxy name.
  late final Output<String> api;

  /// Basepaths associated with the deployed proxy.
  late final Output<List<String>> basepaths;

  /// RFC3339 timestamp when deployment started.
  late final Output<String> deployStartTime;

  /// Apigee environment name.
  late final Output<String> environment;

  /// Apigee organization ID.
  late final Output<String> orgId;

  /// If true, replaces other deployed revisions of this proxy in the environment.
  late final Output<bool?> override;

  /// API proxy revision number to deploy.
  late final Output<int> revision;

  /// If true, enables sequenced rollout for safe traffic switching.
  late final Output<bool?> sequencedRollout;

  /// Optional service account the deployed proxy runs as.
  late final Output<String?> serviceAccount;

  /// Deployment state reported by Apigee.
  late final Output<String> state;

  EnvironmentApiRevisionDeployment(
    String name, {
    EnvironmentApiRevisionDeploymentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/environmentApiRevisionDeployment:EnvironmentApiRevisionDeployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.api = registerOutput<String>('api');
    this.basepaths = registerOutput<List<String>>('basepaths');
    this.deployStartTime = registerOutput<String>('deployStartTime');
    this.environment = registerOutput<String>('environment');
    this.orgId = registerOutput<String>('orgId');
    this.override = registerOutput<bool?>('override');
    this.revision = registerOutput<int>('revision');
    this.sequencedRollout = registerOutput<bool?>('sequencedRollout');
    this.serviceAccount = registerOutput<String?>('serviceAccount');
    this.state = registerOutput<String>('state');
  }
}
