import 'package:pulumi/pulumi.dart' as pulumi;
import 'organizations_access_args.dart';
import 'organizations_access_state.dart';

/// Manages Service Catalog AWS Organizations Access, a portfolio sharing feature through AWS Organizations. This allows Service Catalog to receive updates on your organization in order to sync your shares with the current structure. This resource will prompt AWS to set `organizations:EnableAWSServiceAccess` on your behalf so that your shares can be in sync with any changes in your AWS Organizations structure.
///
/// &gt; **NOTE:** This resource can only be used by the management account in the organization. In other words, a delegated administrator is not authorized to use the resource.
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
/// const example = new aws.servicecatalog.OrganizationsAccess("example", {enabled: true});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.OrganizationsAccess("example", enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ServiceCatalog.OrganizationsAccess("example", new()
///     {
///         Enabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicecatalog.NewOrganizationsAccess(ctx, "example", &servicecatalog.OrganizationsAccessArgs{
/// 			Enabled: pulumi.Bool(true),
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
/// import com.pulumi.aws.servicecatalog.OrganizationsAccess;
/// import com.pulumi.aws.servicecatalog.OrganizationsAccessArgs;
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
///         var example = new OrganizationsAccess("example", OrganizationsAccessArgs.builder()
///             .enabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicecatalog:OrganizationsAccess
///     properties:
///       enabled: 'true'
/// ```
class OrganizationsAccess extends pulumi.CustomResource {
  /// Whether to enable AWS Organizations access.
  late final pulumi.Output<bool> enabled;

  /// Creates a new [OrganizationsAccess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationsAccess]. {@macro pulumi_servicecatalog_organizations_access_organizations_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationsAccess(
    String name, {
    OrganizationsAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:servicecatalog/organizationsAccess:OrganizationsAccess',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    enabled = registerOutput<bool>('enabled');
  }

  /// Gets an existing [OrganizationsAccess] resource's state with the given [name] and [id].
  static OrganizationsAccess get(
    String name,
    pulumi.Input<String> id, {
    OrganizationsAccessState? state,
  }) {
    return OrganizationsAccess._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OrganizationsAccess._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:servicecatalog/organizationsAccess:OrganizationsAccess',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    enabled = registerOutput<bool>('enabled');
  }
}
