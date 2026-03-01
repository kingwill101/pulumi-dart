import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_authorization_connection_args.dart';
import 'app_authorization_connection_auth_request.dart';
import 'app_authorization_connection_state.dart';
import 'app_authorization_connection_tenant.dart';
import 'app_authorization_connection_timeouts.dart';

/// Resource for managing an AWS AppFabric App Authorization Connection.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appfabric.AppAuthorizationConnection("example", {
///     appAuthorizationArn: test.arn,
///     appBundleArn: arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appfabric.AppAuthorizationConnection("example",
///     app_authorization_arn=test["arn"],
///     app_bundle_arn=arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppFabric.AppAuthorizationConnection("example", new()
///     {
///         AppAuthorizationArn = test.Arn,
///         AppBundleArn = arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appfabric"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appfabric.NewAppAuthorizationConnection(ctx, "example", &appfabric.AppAuthorizationConnectionArgs{
/// 			AppAuthorizationArn: pulumi.Any(test.Arn),
/// 			AppBundleArn:        pulumi.Any(arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new AppAuthorizationConnection("example", AppAuthorizationConnectionArgs.builder()
///             .appAuthorizationArn(test.arn())
///             .appBundleArn(arn)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appfabric:AppAuthorizationConnection
///     properties:
///       appAuthorizationArn: ${test.arn}
///       appBundleArn: ${arn}
/// ```
class AppAuthorizationConnection extends pulumi.CustomResource {
  /// The name of the application.
  late final pulumi.Output<String> app;
  /// The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app authorization to use for the request.
  late final pulumi.Output<String> appAuthorizationArn;
  /// The Amazon Resource Name (ARN) of the app bundle to use for the request.
  late final pulumi.Output<String> appBundleArn;
  /// Contains OAuth2 authorization information.This is required if the app authorization for the request is configured with an OAuth2 (oauth2) authorization type.
  late final pulumi.Output<AppAuthorizationConnectionAuthRequest?> authRequest;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Contains information about an application tenant, such as the application display name and identifier.
  late final pulumi.Output<List<AppAuthorizationConnectionTenant>> tenants;
  late final pulumi.Output<AppAuthorizationConnectionTimeouts?> timeouts;

  /// Creates a new [AppAuthorizationConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppAuthorizationConnection]. {@macro pulumi_appfabric_app_authorization_connection_app_authorization_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppAuthorizationConnection(
    String name, {
    AppAuthorizationConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appfabric/appAuthorizationConnection:AppAuthorizationConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.app = registerOutput<String>('app');
    this.appAuthorizationArn = registerOutput<String>('appAuthorizationArn');
    this.appBundleArn = registerOutput<String>('appBundleArn');
    this.authRequest = registerOutput<AppAuthorizationConnectionAuthRequest?>('authRequest');
    this.region = registerOutput<String>('region');
    this.tenants = registerOutput<List<AppAuthorizationConnectionTenant>>('tenants');
    this.timeouts = registerOutput<AppAuthorizationConnectionTimeouts?>('timeouts');
  }

  /// Gets an existing [AppAuthorizationConnection] resource's state with the given [name] and [id].
  static AppAuthorizationConnection get(
    String name,
    pulumi.Input<String> id, {
    AppAuthorizationConnectionState? state,
  }) {
    return AppAuthorizationConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AppAuthorizationConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appfabric/appAuthorizationConnection:AppAuthorizationConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.app = registerOutput<String>('app');
    this.appAuthorizationArn = registerOutput<String>('appAuthorizationArn');
    this.appBundleArn = registerOutput<String>('appBundleArn');
    this.authRequest = registerOutput<AppAuthorizationConnectionAuthRequest?>('authRequest');
    this.region = registerOutput<String>('region');
    this.tenants = registerOutput<List<AppAuthorizationConnectionTenant>>('tenants');
    this.timeouts = registerOutput<AppAuthorizationConnectionTimeouts?>('timeouts');
  }
}
