import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_grant_args.dart';
import 'policy_grant_detail.dart';
import 'policy_grant_principal.dart';
import 'policy_grant_state.dart';

/// Manages an AWS DataZone Policy Grant.
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
/// const example = new aws.datazone.PolicyGrant("example", {
///     detail: {
///         createDomainUnit: {},
///     },
///     principal: {
///         user: {
///             allUsersGrantFilter: {},
///         },
///     },
///     domainIdentifier: exampleAwsDatazoneDomain.id,
///     entityIdentifier: exampleAwsDatazoneDomain.rootDomainUnitId,
///     entityType: "DOMAIN_UNIT",
///     policyType: "CREATE_DOMAIN_UNIT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datazone.PolicyGrant("example",
///     detail={
///         "create_domain_unit": {},
///     },
///     principal={
///         "user": {
///             "all_users_grant_filter": {},
///         },
///     },
///     domain_identifier=example_aws_datazone_domain["id"],
///     entity_identifier=example_aws_datazone_domain["rootDomainUnitId"],
///     entity_type="DOMAIN_UNIT",
///     policy_type="CREATE_DOMAIN_UNIT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataZone.PolicyGrant("example", new()
///     {
///         Detail = new Aws.DataZone.Inputs.PolicyGrantDetailArgs
///         {
///             CreateDomainUnit = null,
///         },
///         Principal = new Aws.DataZone.Inputs.PolicyGrantPrincipalArgs
///         {
///             User = new Aws.DataZone.Inputs.PolicyGrantPrincipalUserArgs
///             {
///                 AllUsersGrantFilter = null,
///             },
///         },
///         DomainIdentifier = exampleAwsDatazoneDomain.Id,
///         EntityIdentifier = exampleAwsDatazoneDomain.RootDomainUnitId,
///         EntityType = "DOMAIN_UNIT",
///         PolicyType = "CREATE_DOMAIN_UNIT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datazone"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datazone.NewPolicyGrant(ctx, "example", &datazone.PolicyGrantArgs{
/// 			Detail: &datazone.PolicyGrantDetailArgs{
/// 				CreateDomainUnit: &datazone.PolicyGrantDetailCreateDomainUnitArgs{},
/// 			},
/// 			Principal: &datazone.PolicyGrantPrincipalArgs{
/// 				User: &datazone.PolicyGrantPrincipalUserArgs{
/// 					AllUsersGrantFilter: &datazone.PolicyGrantPrincipalUserAllUsersGrantFilterArgs{},
/// 				},
/// 			},
/// 			DomainIdentifier: pulumi.Any(exampleAwsDatazoneDomain.Id),
/// 			EntityIdentifier: pulumi.Any(exampleAwsDatazoneDomain.RootDomainUnitId),
/// 			EntityType:       pulumi.String("DOMAIN_UNIT"),
/// 			PolicyType:       pulumi.String("CREATE_DOMAIN_UNIT"),
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
/// resource "aws_datazone_policygrant" "example" {
///   detail = {
///     create_domain_unit = {}
///   }
///   principal = {
///     user = {
///       all_users_grant_filter = {}
///     }
///   }
///   domain_identifier = exampleAwsDatazoneDomain.id
///   entity_identifier = exampleAwsDatazoneDomain.rootDomainUnitId
///   entity_type       = "DOMAIN_UNIT"
///   policy_type       = "CREATE_DOMAIN_UNIT"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.datazone.PolicyGrant;
/// import com.pulumi.aws.datazone.PolicyGrantArgs;
/// import com.pulumi.aws.datazone.inputs.PolicyGrantDetailArgs;
/// import com.pulumi.aws.datazone.inputs.PolicyGrantDetailCreateDomainUnitArgs;
/// import com.pulumi.aws.datazone.inputs.PolicyGrantPrincipalArgs;
/// import com.pulumi.aws.datazone.inputs.PolicyGrantPrincipalUserArgs;
/// import com.pulumi.aws.datazone.inputs.PolicyGrantPrincipalUserAllUsersGrantFilterArgs;
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
///         var example = new PolicyGrant("example", PolicyGrantArgs.builder()
///             .detail(PolicyGrantDetailArgs.builder()
///                 .createDomainUnit(PolicyGrantDetailCreateDomainUnitArgs.builder()
///                     .build())
///                 .build())
///             .principal(PolicyGrantPrincipalArgs.builder()
///                 .user(PolicyGrantPrincipalUserArgs.builder()
///                     .allUsersGrantFilter(PolicyGrantPrincipalUserAllUsersGrantFilterArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .domainIdentifier(exampleAwsDatazoneDomain.id())
///             .entityIdentifier(exampleAwsDatazoneDomain.rootDomainUnitId())
///             .entityType("DOMAIN_UNIT")
///             .policyType("CREATE_DOMAIN_UNIT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:datazone:PolicyGrant
///     properties:
///       detail:
///         createDomainUnit: {}
///       principal:
///         user:
///           allUsersGrantFilter: {}
///       domainIdentifier: ${exampleAwsDatazoneDomain.id}
///       entityIdentifier: ${exampleAwsDatazoneDomain.rootDomainUnitId}
///       entityType: DOMAIN_UNIT
///       policyType: CREATE_DOMAIN_UNIT
/// ```
///
///
/// ### With Include Child Domain Units
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datazone.PolicyGrant("example", {
///     detail: {
///         createDomainUnit: {
///             includeChildDomainUnits: true,
///         },
///     },
///     principal: {
///         user: {
///             allUsersGrantFilter: {},
///         },
///     },
///     domainIdentifier: exampleAwsDatazoneDomain.id,
///     entityIdentifier: exampleAwsDatazoneDomain.rootDomainUnitId,
///     entityType: "DOMAIN_UNIT",
///     policyType: "CREATE_DOMAIN_UNIT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datazone.PolicyGrant("example",
///     detail={
///         "create_domain_unit": {
///             "include_child_domain_units": True,
///         },
///     },
///     principal={
///         "user": {
///             "all_users_grant_filter": {},
///         },
///     },
///     domain_identifier=example_aws_datazone_domain["id"],
///     entity_identifier=example_aws_datazone_domain["rootDomainUnitId"],
///     entity_type="DOMAIN_UNIT",
///     policy_type="CREATE_DOMAIN_UNIT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataZone.PolicyGrant("example", new()
///     {
///         Detail = new Aws.DataZone.Inputs.PolicyGrantDetailArgs
///         {
///             CreateDomainUnit = new Aws.DataZone.Inputs.PolicyGrantDetailCreateDomainUnitArgs
///             {
///                 IncludeChildDomainUnits = true,
///             },
///         },
///         Principal = new Aws.DataZone.Inputs.PolicyGrantPrincipalArgs
///         {
///             User = new Aws.DataZone.Inputs.PolicyGrantPrincipalUserArgs
///             {
///                 AllUsersGrantFilter = null,
///             },
///         },
///         DomainIdentifier = exampleAwsDatazoneDomain.Id,
///         EntityIdentifier = exampleAwsDatazoneDomain.RootDomainUnitId,
///         EntityType = "DOMAIN_UNIT",
///         PolicyType = "CREATE_DOMAIN_UNIT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datazone"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datazone.NewPolicyGrant(ctx, "example", &datazone.PolicyGrantArgs{
/// 			Detail: &datazone.PolicyGrantDetailArgs{
/// 				CreateDomainUnit: &datazone.PolicyGrantDetailCreateDomainUnitArgs{
/// 					IncludeChildDomainUnits: pulumi.Bool(true),
/// 				},
/// 			},
/// 			Principal: &datazone.PolicyGrantPrincipalArgs{
/// 				User: &datazone.PolicyGrantPrincipalUserArgs{
/// 					AllUsersGrantFilter: &datazone.PolicyGrantPrincipalUserAllUsersGrantFilterArgs{},
/// 				},
/// 			},
/// 			DomainIdentifier: pulumi.Any(exampleAwsDatazoneDomain.Id),
/// 			EntityIdentifier: pulumi.Any(exampleAwsDatazoneDomain.RootDomainUnitId),
/// 			EntityType:       pulumi.String("DOMAIN_UNIT"),
/// 			PolicyType:       pulumi.String("CREATE_DOMAIN_UNIT"),
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
/// resource "aws_datazone_policygrant" "example" {
///   detail = {
///     create_domain_unit = {
///       include_child_domain_units = true
///     }
///   }
///   principal = {
///     user = {
///       all_users_grant_filter = {}
///     }
///   }
///   domain_identifier = exampleAwsDatazoneDomain.id
///   entity_identifier = exampleAwsDatazoneDomain.rootDomainUnitId
///   entity_type       = "DOMAIN_UNIT"
///   policy_type       = "CREATE_DOMAIN_UNIT"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.datazone.PolicyGrant;
/// import com.pulumi.aws.datazone.PolicyGrantArgs;
/// import com.pulumi.aws.datazone.inputs.PolicyGrantDetailArgs;
/// import com.pulumi.aws.datazone.inputs.PolicyGrantDetailCreateDomainUnitArgs;
/// import com.pulumi.aws.datazone.inputs.PolicyGrantPrincipalArgs;
/// import com.pulumi.aws.datazone.inputs.PolicyGrantPrincipalUserArgs;
/// import com.pulumi.aws.datazone.inputs.PolicyGrantPrincipalUserAllUsersGrantFilterArgs;
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
///         var example = new PolicyGrant("example", PolicyGrantArgs.builder()
///             .detail(PolicyGrantDetailArgs.builder()
///                 .createDomainUnit(PolicyGrantDetailCreateDomainUnitArgs.builder()
///                     .includeChildDomainUnits(true)
///                     .build())
///                 .build())
///             .principal(PolicyGrantPrincipalArgs.builder()
///                 .user(PolicyGrantPrincipalUserArgs.builder()
///                     .allUsersGrantFilter(PolicyGrantPrincipalUserAllUsersGrantFilterArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .domainIdentifier(exampleAwsDatazoneDomain.id())
///             .entityIdentifier(exampleAwsDatazoneDomain.rootDomainUnitId())
///             .entityType("DOMAIN_UNIT")
///             .policyType("CREATE_DOMAIN_UNIT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:datazone:PolicyGrant
///     properties:
///       detail:
///         createDomainUnit:
///           includeChildDomainUnits: true
///       principal:
///         user:
///           allUsersGrantFilter: {}
///       domainIdentifier: ${exampleAwsDatazoneDomain.id}
///       entityIdentifier: ${exampleAwsDatazoneDomain.rootDomainUnitId}
///       entityType: DOMAIN_UNIT
///       policyType: CREATE_DOMAIN_UNIT
/// ```
///
///
/// ### With Project Principal
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datazone.PolicyGrant("example", {
///     detail: {
///         createGlossary: {},
///     },
///     principal: {
///         project: {
///             projectDesignation: "OWNER",
///             projectIdentifier: exampleAwsDatazoneProject.id,
///         },
///     },
///     domainIdentifier: exampleAwsDatazoneDomain.id,
///     entityIdentifier: exampleAwsDatazoneDomain.rootDomainUnitId,
///     entityType: "DOMAIN_UNIT",
///     policyType: "CREATE_GLOSSARY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datazone.PolicyGrant("example",
///     detail={
///         "create_glossary": {},
///     },
///     principal={
///         "project": {
///             "project_designation": "OWNER",
///             "project_identifier": example_aws_datazone_project["id"],
///         },
///     },
///     domain_identifier=example_aws_datazone_domain["id"],
///     entity_identifier=example_aws_datazone_domain["rootDomainUnitId"],
///     entity_type="DOMAIN_UNIT",
///     policy_type="CREATE_GLOSSARY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataZone.PolicyGrant("example", new()
///     {
///         Detail = new Aws.DataZone.Inputs.PolicyGrantDetailArgs
///         {
///             CreateGlossary = null,
///         },
///         Principal = new Aws.DataZone.Inputs.PolicyGrantPrincipalArgs
///         {
///             Project = new Aws.DataZone.Inputs.PolicyGrantPrincipalProjectArgs
///             {
///                 ProjectDesignation = "OWNER",
///                 ProjectIdentifier = exampleAwsDatazoneProject.Id,
///             },
///         },
///         DomainIdentifier = exampleAwsDatazoneDomain.Id,
///         EntityIdentifier = exampleAwsDatazoneDomain.RootDomainUnitId,
///         EntityType = "DOMAIN_UNIT",
///         PolicyType = "CREATE_GLOSSARY",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datazone"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datazone.NewPolicyGrant(ctx, "example", &datazone.PolicyGrantArgs{
/// 			Detail: &datazone.PolicyGrantDetailArgs{
/// 				CreateGlossary: &datazone.PolicyGrantDetailCreateGlossaryArgs{},
/// 			},
/// 			Principal: &datazone.PolicyGrantPrincipalArgs{
/// 				Project: &datazone.PolicyGrantPrincipalProjectArgs{
/// 					ProjectDesignation: pulumi.String("OWNER"),
/// 					ProjectIdentifier:  pulumi.Any(exampleAwsDatazoneProject.Id),
/// 				},
/// 			},
/// 			DomainIdentifier: pulumi.Any(exampleAwsDatazoneDomain.Id),
/// 			EntityIdentifier: pulumi.Any(exampleAwsDatazoneDomain.RootDomainUnitId),
/// 			EntityType:       pulumi.String("DOMAIN_UNIT"),
/// 			PolicyType:       pulumi.String("CREATE_GLOSSARY"),
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
/// resource "aws_datazone_policygrant" "example" {
///   detail = {
///     create_glossary = {}
///   }
///   principal = {
///     project = {
///       project_designation = "OWNER"
///       project_identifier  = exampleAwsDatazoneProject.id
///     }
///   }
///   domain_identifier = exampleAwsDatazoneDomain.id
///   entity_identifier = exampleAwsDatazoneDomain.rootDomainUnitId
///   entity_type       = "DOMAIN_UNIT"
///   policy_type       = "CREATE_GLOSSARY"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.datazone.PolicyGrant;
/// import com.pulumi.aws.datazone.PolicyGrantArgs;
/// import com.pulumi.aws.datazone.inputs.PolicyGrantDetailArgs;
/// import com.pulumi.aws.datazone.inputs.PolicyGrantDetailCreateGlossaryArgs;
/// import com.pulumi.aws.datazone.inputs.PolicyGrantPrincipalArgs;
/// import com.pulumi.aws.datazone.inputs.PolicyGrantPrincipalProjectArgs;
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
///         var example = new PolicyGrant("example", PolicyGrantArgs.builder()
///             .detail(PolicyGrantDetailArgs.builder()
///                 .createGlossary(PolicyGrantDetailCreateGlossaryArgs.builder()
///                     .build())
///                 .build())
///             .principal(PolicyGrantPrincipalArgs.builder()
///                 .project(PolicyGrantPrincipalProjectArgs.builder()
///                     .projectDesignation("OWNER")
///                     .projectIdentifier(exampleAwsDatazoneProject.id())
///                     .build())
///                 .build())
///             .domainIdentifier(exampleAwsDatazoneDomain.id())
///             .entityIdentifier(exampleAwsDatazoneDomain.rootDomainUnitId())
///             .entityType("DOMAIN_UNIT")
///             .policyType("CREATE_GLOSSARY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:datazone:PolicyGrant
///     properties:
///       detail:
///         createGlossary: {}
///       principal:
///         project:
///           projectDesignation: OWNER
///           projectIdentifier: ${exampleAwsDatazoneProject.id}
///       domainIdentifier: ${exampleAwsDatazoneDomain.id}
///       entityIdentifier: ${exampleAwsDatazoneDomain.rootDomainUnitId}
///       entityType: DOMAIN_UNIT
///       policyType: CREATE_GLOSSARY
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `domainIdentifier` (String) Identifier of the domain.
/// * `entityType` (String) Type of entity.
/// * `entityIdentifier` (String) Identifier of the entity.
/// * `policyType` (String) Type of the managed policy.
/// * `grantId` (String) Identifier of the policy grant.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import DataZone Policy Grant using the `domain_identifier,entity_type,entity_identifier,policy_type,grant_id`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/policyGrant:PolicyGrant example dzd_54nakfrg9k6sri,DOMAIN_UNIT,9v3oj4n26k4yrq,CREATE_DOMAIN_UNIT,3v8lox42tj5zic
/// ```
class PolicyGrant extends pulumi.CustomResource {
  /// Timestamp when the policy grant was created (RFC3339 format).
  late final pulumi.Output<String> createdAt;
  /// User who created the policy grant.
  late final pulumi.Output<String> createdBy;
  /// Policy grant detail. Exactly one sub-block must be specified. See `detail` Block below.
  late final pulumi.Output<PolicyGrantDetail> detail;
  /// Identifier of the domain where the policy grant is created.
  late final pulumi.Output<String> domainIdentifier;
  /// Identifier of the entity to which the policy grant applies.
  late final pulumi.Output<String> entityIdentifier;
  /// Type of entity to which the policy grant applies. Valid values: `ASSET_TYPE`, `DOMAIN_UNIT`, `ENVIRONMENT_BLUEPRINT_CONFIGURATION`, `ENVIRONMENT_PROFILE`.
  late final pulumi.Output<String> entityType;
  /// Identifier of the policy grant.
  late final pulumi.Output<String> grantId;
  /// Type of the managed policy. Valid values: `ADD_TO_PROJECT_MEMBER_POOL`, `CREATE_ASSET_TYPE`, `CREATE_DOMAIN_UNIT`, `CREATE_ENVIRONMENT`, `CREATE_ENVIRONMENT_FROM_BLUEPRINT`, `CREATE_ENVIRONMENT_PROFILE`, `CREATE_FORM_TYPE`, `CREATE_GLOSSARY`, `CREATE_PROJECT`, `CREATE_PROJECT_FROM_PROJECT_PROFILE`, `DELEGATE_CREATE_ENVIRONMENT_PROFILE`, `OVERRIDE_DOMAIN_UNIT_OWNERS`, `OVERRIDE_PROJECT_OWNERS`, `USE_ASSET_TYPE`.
  late final pulumi.Output<String> policyType;
  /// Principal to which the policy grant applies. Exactly one sub-block must be specified. See `principal` Block below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<PolicyGrantPrincipal> principal;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [PolicyGrant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyGrant]. {@macro pulumi_datazone_policy_grant_policy_grant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyGrant(
    String name, {
    PolicyGrantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datazone/policyGrant:PolicyGrant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.47.0').merge(options),
        ) {
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    detail = registerOutput<PolicyGrantDetail>('detail', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyGrantDetail.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domainIdentifier = registerOutput<String>('domainIdentifier');
    entityIdentifier = registerOutput<String>('entityIdentifier');
    entityType = registerOutput<String>('entityType');
    grantId = registerOutput<String>('grantId');
    policyType = registerOutput<String>('policyType');
    principal = registerOutput<PolicyGrantPrincipal>('principal', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyGrantPrincipal.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
  }

  /// Gets an existing [PolicyGrant] resource's state with the given [name] and [id].
  static PolicyGrant get(
    String name,
    pulumi.Input<String> id, {
    PolicyGrantState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PolicyGrant._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PolicyGrant._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datazone/policyGrant:PolicyGrant',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    detail = registerOutput<PolicyGrantDetail>('detail', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyGrantDetail.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domainIdentifier = registerOutput<String>('domainIdentifier');
    entityIdentifier = registerOutput<String>('entityIdentifier');
    entityType = registerOutput<String>('entityType');
    grantId = registerOutput<String>('grantId');
    policyType = registerOutput<String>('policyType');
    principal = registerOutput<PolicyGrantPrincipal>('principal', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyGrantPrincipal.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [PolicyGrant] resource.
  PolicyGrant.reference(String urn)
    : super(
        'aws:datazone/policyGrant:PolicyGrant',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    detail = registerOutput<PolicyGrantDetail>('detail', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyGrantDetail.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domainIdentifier = registerOutput<String>('domainIdentifier');
    entityIdentifier = registerOutput<String>('entityIdentifier');
    entityType = registerOutput<String>('entityType');
    grantId = registerOutput<String>('grantId');
    policyType = registerOutput<String>('policyType');
    principal = registerOutput<PolicyGrantPrincipal>('principal', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyGrantPrincipal.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
  }
}
