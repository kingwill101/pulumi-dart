import 'package:pulumi/pulumi.dart' as pulumi;
import 'signing_profile_permission_args.dart';
import 'signing_profile_permission_state.dart';

/// Creates a Signer Signing Profile Permission. That is, a cross-account permission for a signing profile.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const prodSp = new aws.signer.SigningProfile("prod_sp", {
///     platformId: "AWSLambda-SHA384-ECDSA",
///     namePrefix: "prod_sp_",
///     signatureValidityPeriod: {
///         value: 5,
///         type: "YEARS",
///     },
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///     },
/// });
/// const spPermission1 = new aws.signer.SigningProfilePermission("sp_permission_1", {
///     profileName: prodSp.name,
///     action: "signer:StartSigningJob",
///     principal: awsAccount,
/// });
/// const spPermission2 = new aws.signer.SigningProfilePermission("sp_permission_2", {
///     profileName: prodSp.name,
///     action: "signer:GetSigningProfile",
///     principal: awsTeamRoleArn,
///     statementId: "ProdAccountStartSigningJob_StatementId",
/// });
/// const spPermission3 = new aws.signer.SigningProfilePermission("sp_permission_3", {
///     profileName: prodSp.name,
///     action: "signer:RevokeSignature",
///     principal: "123456789012",
///     profileVersion: prodSp.version,
///     statementIdPrefix: "version-permission-",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// prod_sp = aws.signer.SigningProfile("prod_sp",
///     platform_id="AWSLambda-SHA384-ECDSA",
///     name_prefix="prod_sp_",
///     signature_validity_period={
///         "value": 5,
///         "type": "YEARS",
///     },
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///     })
/// sp_permission1 = aws.signer.SigningProfilePermission("sp_permission_1",
///     profile_name=prod_sp.name,
///     action="signer:StartSigningJob",
///     principal=aws_account)
/// sp_permission2 = aws.signer.SigningProfilePermission("sp_permission_2",
///     profile_name=prod_sp.name,
///     action="signer:GetSigningProfile",
///     principal=aws_team_role_arn,
///     statement_id="ProdAccountStartSigningJob_StatementId")
/// sp_permission3 = aws.signer.SigningProfilePermission("sp_permission_3",
///     profile_name=prod_sp.name,
///     action="signer:RevokeSignature",
///     principal="123456789012",
///     profile_version=prod_sp.version,
///     statement_id_prefix="version-permission-")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prodSp = new Aws.Signer.SigningProfile("prod_sp", new()
///     {
///         PlatformId = "AWSLambda-SHA384-ECDSA",
///         NamePrefix = "prod_sp_",
///         SignatureValidityPeriod = new Aws.Signer.Inputs.SigningProfileSignatureValidityPeriodArgs
///         {
///             Value = 5,
///             Type = "YEARS",
///         },
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
///         },
///     });
///
///     var spPermission1 = new Aws.Signer.SigningProfilePermission("sp_permission_1", new()
///     {
///         ProfileName = prodSp.Name,
///         Action = "signer:StartSigningJob",
///         Principal = awsAccount,
///     });
///
///     var spPermission2 = new Aws.Signer.SigningProfilePermission("sp_permission_2", new()
///     {
///         ProfileName = prodSp.Name,
///         Action = "signer:GetSigningProfile",
///         Principal = awsTeamRoleArn,
///         StatementId = "ProdAccountStartSigningJob_StatementId",
///     });
///
///     var spPermission3 = new Aws.Signer.SigningProfilePermission("sp_permission_3", new()
///     {
///         ProfileName = prodSp.Name,
///         Action = "signer:RevokeSignature",
///         Principal = "123456789012",
///         ProfileVersion = prodSp.Version,
///         StatementIdPrefix = "version-permission-",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/signer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		prodSp, err := signer.NewSigningProfile(ctx, "prod_sp", &signer.SigningProfileArgs{
/// 			PlatformId: pulumi.String("AWSLambda-SHA384-ECDSA"),
/// 			NamePrefix: pulumi.String("prod_sp_"),
/// 			SignatureValidityPeriod: &signer.SigningProfileSignatureValidityPeriodArgs{
/// 				Value: pulumi.Int(5),
/// 				Type:  pulumi.String("YEARS"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = signer.NewSigningProfilePermission(ctx, "sp_permission_1", &signer.SigningProfilePermissionArgs{
/// 			ProfileName: prodSp.Name,
/// 			Action:      pulumi.String("signer:StartSigningJob"),
/// 			Principal:   pulumi.Any(awsAccount),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = signer.NewSigningProfilePermission(ctx, "sp_permission_2", &signer.SigningProfilePermissionArgs{
/// 			ProfileName: prodSp.Name,
/// 			Action:      pulumi.String("signer:GetSigningProfile"),
/// 			Principal:   pulumi.Any(awsTeamRoleArn),
/// 			StatementId: pulumi.String("ProdAccountStartSigningJob_StatementId"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = signer.NewSigningProfilePermission(ctx, "sp_permission_3", &signer.SigningProfilePermissionArgs{
/// 			ProfileName:       prodSp.Name,
/// 			Action:            pulumi.String("signer:RevokeSignature"),
/// 			Principal:         pulumi.String("123456789012"),
/// 			ProfileVersion:    prodSp.Version,
/// 			StatementIdPrefix: pulumi.String("version-permission-"),
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
/// import com.pulumi.aws.signer.SigningProfile;
/// import com.pulumi.aws.signer.SigningProfileArgs;
/// import com.pulumi.aws.signer.inputs.SigningProfileSignatureValidityPeriodArgs;
/// import com.pulumi.aws.signer.SigningProfilePermission;
/// import com.pulumi.aws.signer.SigningProfilePermissionArgs;
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
///         var prodSp = new SigningProfile("prodSp", SigningProfileArgs.builder()
///             .platformId("AWSLambda-SHA384-ECDSA")
///             .namePrefix("prod_sp_")
///             .signatureValidityPeriod(SigningProfileSignatureValidityPeriodArgs.builder()
///                 .value(5)
///                 .type("YEARS")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2")
///             ))
///             .build());
///
///         var spPermission1 = new SigningProfilePermission("spPermission1", SigningProfilePermissionArgs.builder()
///             .profileName(prodSp.name())
///             .action("signer:StartSigningJob")
///             .principal(awsAccount)
///             .build());
///
///         var spPermission2 = new SigningProfilePermission("spPermission2", SigningProfilePermissionArgs.builder()
///             .profileName(prodSp.name())
///             .action("signer:GetSigningProfile")
///             .principal(awsTeamRoleArn)
///             .statementId("ProdAccountStartSigningJob_StatementId")
///             .build());
///
///         var spPermission3 = new SigningProfilePermission("spPermission3", SigningProfilePermissionArgs.builder()
///             .profileName(prodSp.name())
///             .action("signer:RevokeSignature")
///             .principal("123456789012")
///             .profileVersion(prodSp.version())
///             .statementIdPrefix("version-permission-")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   prodSp:
///     type: aws:signer:SigningProfile
///     name: prod_sp
///     properties:
///       platformId: AWSLambda-SHA384-ECDSA
///       namePrefix: prod_sp_
///       signatureValidityPeriod:
///         value: 5
///         type: YEARS
///       tags:
///         tag1: value1
///         tag2: value2
///   spPermission1:
///     type: aws:signer:SigningProfilePermission
///     name: sp_permission_1
///     properties:
///       profileName: ${prodSp.name}
///       action: signer:StartSigningJob
///       principal: ${awsAccount}
///   spPermission2:
///     type: aws:signer:SigningProfilePermission
///     name: sp_permission_2
///     properties:
///       profileName: ${prodSp.name}
///       action: signer:GetSigningProfile
///       principal: ${awsTeamRoleArn}
///       statementId: ProdAccountStartSigningJob_StatementId
///   spPermission3:
///     type: aws:signer:SigningProfilePermission
///     name: sp_permission_3
///     properties:
///       profileName: ${prodSp.name}
///       action: signer:RevokeSignature
///       principal: '123456789012'
///       profileVersion: ${prodSp.version}
///       statementIdPrefix: version-permission-
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Signer signing profile permission statements using profile_name/statement_id. For example:
///
/// ```sh
/// $ pulumi import aws:signer/signingProfilePermission:SigningProfilePermission test_signer_signing_profile_permission prod_profile_DdW3Mk1foYL88fajut4mTVFGpuwfd4ACO6ANL0D1uIj7lrn8adK/ProdAccountStartSigningJobStatementId
/// ```
class SigningProfilePermission extends pulumi.CustomResource {
  /// An AWS Signer action permitted as part of cross-account permissions. Valid values: `signer:StartSigningJob`, `signer:GetSigningProfile`, `signer:RevokeSignature`, or `signer:SignPayload`.
  late final pulumi.Output<String> action;
  /// The AWS principal to be granted a cross-account permission.
  late final pulumi.Output<String> principal;
  /// Name of the signing profile to add the cross-account permissions.
  late final pulumi.Output<String> profileName;
  /// The signing profile version that a permission applies to.
  late final pulumi.Output<String> profileVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A unique statement identifier. By default generated by the provider.
  late final pulumi.Output<String> statementId;
  /// A statement identifier prefix. The provider will generate a unique suffix. Conflicts with `statement_id`.
  late final pulumi.Output<String> statementIdPrefix;

  /// Creates a new [SigningProfilePermission].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SigningProfilePermission]. {@macro pulumi_signer_signing_profile_permission_signing_profile_permission_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SigningProfilePermission(
    String name, {
    SigningProfilePermissionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:signer/signingProfilePermission:SigningProfilePermission',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String>('action');
    principal = registerOutput<String>('principal');
    profileName = registerOutput<String>('profileName');
    profileVersion = registerOutput<String>('profileVersion');
    region = registerOutput<String>('region');
    statementId = registerOutput<String>('statementId');
    statementIdPrefix = registerOutput<String>('statementIdPrefix');
  }

  /// Gets an existing [SigningProfilePermission] resource's state with the given [name] and [id].
  static SigningProfilePermission get(
    String name,
    pulumi.Input<String> id, {
    SigningProfilePermissionState? state,
  }) {
    return SigningProfilePermission._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SigningProfilePermission._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:signer/signingProfilePermission:SigningProfilePermission',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String>('action');
    principal = registerOutput<String>('principal');
    profileName = registerOutput<String>('profileName');
    profileVersion = registerOutput<String>('profileVersion');
    region = registerOutput<String>('region');
    statementId = registerOutput<String>('statementId');
    statementIdPrefix = registerOutput<String>('statementIdPrefix');
  }
}
