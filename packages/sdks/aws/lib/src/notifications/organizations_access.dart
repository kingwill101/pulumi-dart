import 'package:pulumi/pulumi.dart' as pulumi;
import 'organizations_access_args.dart';
import 'organizations_access_state.dart';
import 'organizations_access_timeouts.dart';

/// Resource for managing AWS User Notifications Organizations Access. This resource enables or disables organizations access for AWS User Notifications in AWS Organizations, allowing the service to access organization information.
///
/// &gt; **NOTE:** This resource can only be used in the management account of an AWS Organization.
///
/// &gt; **NOTE:** Deleting this resource will always disable organizations access for AWS User Notifications, regardless of the `enabled` attribute value.
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
/// const example = new aws.notifications.OrganizationsAccess("example", {enabled: true});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.notifications.OrganizationsAccess("example", enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Notifications.OrganizationsAccess("example", new()
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/notifications"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notifications.NewOrganizationsAccess(ctx, "example", &notifications.OrganizationsAccessArgs{
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
/// import com.pulumi.aws.notifications.OrganizationsAccess;
/// import com.pulumi.aws.notifications.OrganizationsAccessArgs;
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
///     type: aws:notifications:OrganizationsAccess
///     properties:
///       enabled: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Organizations Access using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/organizationsAccess:OrganizationsAccess example 123456789012
/// ```
class OrganizationsAccess extends pulumi.CustomResource {
  /// Whether to enable organizations access for AWS User Notifications in AWS Organizations. When set to `true`, enables organizations access. When set to `false`, disables organizations access.
  late final pulumi.Output<bool> enabled;
  late final pulumi.Output<OrganizationsAccessTimeouts?> timeouts;

  /// Creates a new [OrganizationsAccess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationsAccess]. {@macro pulumi_notifications_organizations_access_organizations_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationsAccess(
    String name, {
    OrganizationsAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:notifications/organizationsAccess:OrganizationsAccess',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    enabled = registerOutput<bool>('enabled');
    timeouts = registerOutput<OrganizationsAccessTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return OrganizationsAccessTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
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
         'aws:notifications/organizationsAccess:OrganizationsAccess',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    enabled = registerOutput<bool>('enabled');
    timeouts = registerOutput<OrganizationsAccessTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return OrganizationsAccessTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
