import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_domain_args.dart';
import 'default_domain_state.dart';

/// Manages the default mail domain for an AWS WorkMail organization.
///
/// &gt; **NOTE:** This does not register a domain for workmail. This resource requires a verified domain name to be used as default domain for workmail organization.
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
/// const example = new aws.workmail.Organization("example", {organizationAlias: "example-org"});
/// const exampleDefaultDomain = new aws.workmail.DefaultDomain("example", {
///     organizationId: example.id,
///     domainName: example.defaultMailDomain,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workmail.Organization("example", organization_alias="example-org")
/// example_default_domain = aws.workmail.DefaultDomain("example",
///     organization_id=example.id,
///     domain_name=example.default_mail_domain)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WorkMail.Organization("example", new()
///     {
///         OrganizationAlias = "example-org",
///     });
///
///     var exampleDefaultDomain = new Aws.WorkMail.DefaultDomain("example", new()
///     {
///         OrganizationId = example.Id,
///         DomainName = example.DefaultMailDomain,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workmail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := workmail.NewOrganization(ctx, "example", &workmail.OrganizationArgs{
/// 			OrganizationAlias: pulumi.String("example-org"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workmail.NewDefaultDomain(ctx, "example", &workmail.DefaultDomainArgs{
/// 			OrganizationId: example.ID().ToIDOutput().ToStringOutput(),
/// 			DomainName:     example.DefaultMailDomain,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_workmail_organization" "example" {
///   organization_alias = "example-org"
/// }
/// resource "aws_workmail_defaultdomain" "example" {
///   organization_id = aws_workmail_organization.example.id
///   domain_name     = aws_workmail_organization.example.default_mail_domain
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workmail.Organization;
/// import com.pulumi.aws.workmail.OrganizationArgs;
/// import com.pulumi.aws.workmail.DefaultDomain;
/// import com.pulumi.aws.workmail.DefaultDomainArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Organization("example", OrganizationArgs.builder()
///             .organizationAlias("example-org")
///             .build());
///
///         var exampleDefaultDomain = new DefaultDomain("exampleDefaultDomain", DefaultDomainArgs.builder()
///             .organizationId(example.id())
///             .domainName(example.defaultMailDomain())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workmail:Organization
///     properties:
///       organizationAlias: example-org
///   exampleDefaultDomain:
///     type: aws:workmail:DefaultDomain
///     name: example
///     properties:
///       organizationId: ${example.id}
///       domainName: ${example.defaultMailDomain}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `organizationId` (String) Identifier of the WorkMail organization.
///
/// #### Optional
///
/// * `accountId` (String) Account ID where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import WorkMail Default Domain using the organization ID. For example:
///
/// ```sh
/// $ pulumi import aws:workmail/defaultDomain:DefaultDomain example "m-1234567890abcdef0"
/// ```
class DefaultDomain extends pulumi.CustomResource {
  /// Mail domain name to set as the default.
  late final pulumi.Output<String> domainName;
  /// Identifier of the WorkMail organization. Changing this forces a new resource.
  late final pulumi.Output<String> organizationId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [DefaultDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultDomain]. {@macro pulumi_workmail_default_domain_default_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultDomain(
    String name, {
    DefaultDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workmail/defaultDomain:DefaultDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    domainName = registerOutput<String>('domainName');
    organizationId = registerOutput<String>('organizationId');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [DefaultDomain] resource's state with the given [name] and [id].
  static DefaultDomain get(
    String name,
    pulumi.Input<String> id, {
    DefaultDomainState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DefaultDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DefaultDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workmail/defaultDomain:DefaultDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    domainName = registerOutput<String>('domainName');
    organizationId = registerOutput<String>('organizationId');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [DefaultDomain] resource.
  DefaultDomain.reference(String urn)
    : super(
        'aws:workmail/defaultDomain:DefaultDomain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    domainName = registerOutput<String>('domainName');
    organizationId = registerOutput<String>('organizationId');
    region = registerOutput<String>('region');
  }
}
