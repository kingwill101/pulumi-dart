import 'package:pulumi/pulumi.dart';
import '../app_authorization_connection_auth_request/app_authorization_connection_auth_request.dart';
import '../app_authorization_connection_tenant/app_authorization_connection_tenant.dart';
import '../app_authorization_connection_timeouts/app_authorization_connection_timeouts.dart';
import 'app_authorization_connection_args.dart';

/// Resource for managing an AWS AppFabric App Authorization Connection.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appfabric.AppAuthorizationConnection("example", {
/// appAuthorizationArn: test.arn,
/// appBundleArn: arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appfabric.AppAuthorizationConnection("example",
/// app_authorization_arn=test["arn"],
/// app_bundle_arn=arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.AppFabric.AppAuthorizationConnection("example", new()
/// {
/// AppAuthorizationArn = test.Arn,
/// AppBundleArn = arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appfabric"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := appfabric.NewAppAuthorizationConnection(ctx, "example", &appfabric.AppAuthorizationConnectionArgs{
/// AppAuthorizationArn: pulumi.Any(test.Arn),
/// AppBundleArn:        pulumi.Any(arn),
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
/// import com.pulumi.aws.appfabric.AppAuthorizationConnection;
/// import com.pulumi.aws.appfabric.AppAuthorizationConnectionArgs;
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
/// var example = new AppAuthorizationConnection("example", AppAuthorizationConnectionArgs.builder()
/// .appAuthorizationArn(test.arn())
/// .appBundleArn(arn)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:appfabric:AppAuthorizationConnection
/// properties:
/// appAuthorizationArn: ${test.arn}
/// appBundleArn: ${arn}
/// ```
/// <!--End PulumiCodeChooser -->
class AppAuthorizationConnection extends CustomResource {
  /// The name of the application.
  late final Output<String> app;

  /// The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app authorization to use for the request.
  late final Output<String> appAuthorizationArn;

  /// The Amazon Resource Name (ARN) of the app bundle to use for the request.
  late final Output<String> appBundleArn;

  /// Contains OAuth2 authorization information.This is required if the app authorization for the request is configured with an OAuth2 (oauth2) authorization type.
  late final Output<AppAuthorizationConnectionAuthRequest?> authRequest;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Contains information about an application tenant, such as the application display name and identifier.
  late final Output<List<AppAuthorizationConnectionTenant>> tenants;
  late final Output<AppAuthorizationConnectionTimeouts?> timeouts;

  AppAuthorizationConnection(
    String name, {
    AppAuthorizationConnectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appfabric/appAuthorizationConnection:AppAuthorizationConnection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.app = registerOutput<String>('app');
    this.appAuthorizationArn = registerOutput<String>('appAuthorizationArn');
    this.appBundleArn = registerOutput<String>('appBundleArn');
    this.authRequest =
        registerOutput<AppAuthorizationConnectionAuthRequest?>('authRequest');
    this.region = registerOutput<String>('region');
    this.tenants =
        registerOutput<List<AppAuthorizationConnectionTenant>>('tenants');
    this.timeouts =
        registerOutput<AppAuthorizationConnectionTimeouts?>('timeouts');
  }
}
