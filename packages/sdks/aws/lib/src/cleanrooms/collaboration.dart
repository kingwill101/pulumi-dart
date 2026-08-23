import 'package:pulumi/pulumi.dart' as pulumi;
import 'collaboration_args.dart';
import 'collaboration_data_encryption_metadata.dart';
import 'collaboration_state.dart';

/// Provides a AWS Clean Rooms collaboration.
/// All members included in the definition will be invited to join the collaboration and can create memberships.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testCollaboration = new aws.cleanrooms.Collaboration("test_collaboration", {
///     name: "pulumi-example-collaboration",
///     creatorMemberAbilities: [
///         "CAN_QUERY",
///         "CAN_RECEIVE_RESULTS",
///     ],
///     creatorDisplayName: "Creator ",
///     description: "I made this collaboration with Pulumi!",
///     queryLogStatus: "DISABLED",
///     analyticsEngine: "SPARK",
///     dataEncryptionMetadata: {
///         allowClearText: true,
///         allowDuplicates: true,
///         allowJoinsOnColumnsWithDifferentNames: true,
///         preserveNulls: false,
///     },
///     members: [{
///         accountId: "123456789012",
///         displayName: "Other member",
///         memberAbilities: [],
///     }],
///     tags: {
///         Project: "Pulumi",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_collaboration = aws.cleanrooms.Collaboration("test_collaboration",
///     name="pulumi-example-collaboration",
///     creator_member_abilities=[
///         "CAN_QUERY",
///         "CAN_RECEIVE_RESULTS",
///     ],
///     creator_display_name="Creator ",
///     description="I made this collaboration with Pulumi!",
///     query_log_status="DISABLED",
///     analytics_engine="SPARK",
///     data_encryption_metadata={
///         "allow_clear_text": True,
///         "allow_duplicates": True,
///         "allow_joins_on_columns_with_different_names": True,
///         "preserve_nulls": False,
///     },
///     members=[{
///         "account_id": "123456789012",
///         "display_name": "Other member",
///         "member_abilities": [],
///     }],
///     tags={
///         "Project": "Pulumi",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testCollaboration = new Aws.CleanRooms.Collaboration("test_collaboration", new()
///     {
///         Name = "pulumi-example-collaboration",
///         CreatorMemberAbilities = new[]
///         {
///             "CAN_QUERY",
///             "CAN_RECEIVE_RESULTS",
///         },
///         CreatorDisplayName = "Creator ",
///         Description = "I made this collaboration with Pulumi!",
///         QueryLogStatus = "DISABLED",
///         AnalyticsEngine = "SPARK",
///         DataEncryptionMetadata = new Aws.CleanRooms.Inputs.CollaborationDataEncryptionMetadataArgs
///         {
///             AllowClearText = true,
///             AllowDuplicates = true,
///             AllowJoinsOnColumnsWithDifferentNames = true,
///             PreserveNulls = false,
///         },
///         Members = new[]
///         {
///             new Aws.CleanRooms.Inputs.CollaborationMemberArgs
///             {
///                 AccountId = "123456789012",
///                 DisplayName = "Other member",
///                 MemberAbilities = new() { },
///             },
///         },
///         Tags =
///         {
///             { "Project", "Pulumi" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cleanrooms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cleanrooms.NewCollaboration(ctx, "test_collaboration", &cleanrooms.CollaborationArgs{
/// 			Name: pulumi.String("pulumi-example-collaboration"),
/// 			CreatorMemberAbilities: pulumi.StringArray{
/// 				pulumi.String("CAN_QUERY"),
/// 				pulumi.String("CAN_RECEIVE_RESULTS"),
/// 			},
/// 			CreatorDisplayName: pulumi.String("Creator "),
/// 			Description:        pulumi.String("I made this collaboration with Pulumi!"),
/// 			QueryLogStatus:     pulumi.String("DISABLED"),
/// 			AnalyticsEngine:    pulumi.String("SPARK"),
/// 			DataEncryptionMetadata: &cleanrooms.CollaborationDataEncryptionMetadataArgs{
/// 				AllowClearText:                        pulumi.Bool(true),
/// 				AllowDuplicates:                       pulumi.Bool(true),
/// 				AllowJoinsOnColumnsWithDifferentNames: pulumi.Bool(true),
/// 				PreserveNulls:                         pulumi.Bool(false),
/// 			},
/// 			Members: cleanrooms.CollaborationMemberArray{
/// 				&cleanrooms.CollaborationMemberArgs{
/// 					AccountId:       pulumi.String("123456789012"),
/// 					DisplayName:     pulumi.String("Other member"),
/// 					MemberAbilities: pulumi.StringArray{},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Project": pulumi.String("Pulumi"),
/// 			},
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
/// resource "aws_cleanrooms_collaboration" "test_collaboration" {
///   name                     = "pulumi-example-collaboration"
///   creator_member_abilities = ["CAN_QUERY", "CAN_RECEIVE_RESULTS"]
///   creator_display_name     = "Creator "
///   description              = "I made this collaboration with Pulumi!"
///   query_log_status         = "DISABLED"
///   analytics_engine         = "SPARK"
///   data_encryption_metadata = {
///     allow_clear_text                            = true
///     allow_duplicates                            = true
///     allow_joins_on_columns_with_different_names = true
///     preserve_nulls                              = false
///   }
///   members {
///     account_id       = 123456789012
///     display_name     = "Other member"
///     member_abilities = []
///   }
///   tags = {
///     "Project" = "Pulumi"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cleanrooms.Collaboration;
/// import com.pulumi.aws.cleanrooms.CollaborationArgs;
/// import com.pulumi.aws.cleanrooms.inputs.CollaborationDataEncryptionMetadataArgs;
/// import com.pulumi.aws.cleanrooms.inputs.CollaborationMemberArgs;
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
///         var testCollaboration = new Collaboration("testCollaboration", CollaborationArgs.builder()
///             .name("pulumi-example-collaboration")
///             .creatorMemberAbilities(
///                 "CAN_QUERY",
///                 "CAN_RECEIVE_RESULTS")
///             .creatorDisplayName("Creator ")
///             .description("I made this collaboration with Pulumi!")
///             .queryLogStatus("DISABLED")
///             .analyticsEngine("SPARK")
///             .dataEncryptionMetadata(CollaborationDataEncryptionMetadataArgs.builder()
///                 .allowClearText(true)
///                 .allowDuplicates(true)
///                 .allowJoinsOnColumnsWithDifferentNames(true)
///                 .preserveNulls(false)
///                 .build())
///             .members(CollaborationMemberArgs.builder()
///                 .accountId("123456789012")
///                 .displayName("Other member")
///                 .memberAbilities()
///                 .build())
///             .tags(Map.of("Project", "Pulumi"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testCollaboration:
///     type: aws:cleanrooms:Collaboration
///     name: test_collaboration
///     properties:
///       name: pulumi-example-collaboration
///       creatorMemberAbilities:
///         - CAN_QUERY
///         - CAN_RECEIVE_RESULTS
///       creatorDisplayName: 'Creator '
///       description: I made this collaboration with Pulumi!
///       queryLogStatus: DISABLED
///       analyticsEngine: SPARK
///       dataEncryptionMetadata:
///         allowClearText: true
///         allowDuplicates: true
///         allowJoinsOnColumnsWithDifferentNames: true
///         preserveNulls: false
///       members:
///         - accountId: 1.23456789012e+11
///           displayName: Other member
///           memberAbilities: []
///       tags:
///         Project: Pulumi
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the cleanrooms collaboration.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import `aws.cleanrooms.Collaboration` using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cleanrooms/collaboration:Collaboration collaboration 1234abcd-12ab-34cd-56ef-1234567890ab
/// ```
class Collaboration extends pulumi.CustomResource {
  /// Analytics engine used by the collaboration. Valid values are `CLEAN_ROOMS_SQL` (deprecated) and `SPARK`.
  late final pulumi.Output<String?> analyticsEngine;
  /// ARN of the collaboration.
  late final pulumi.Output<String> arn;
  /// Date and time the collaboration was created.
  late final pulumi.Output<String> createTime;
  /// Name for the member record for the collaboration creator.
  late final pulumi.Output<String> creatorDisplayName;
  /// List of member abilities for the creator of the collaboration. Valid values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_CreateCollaboration.html#API-CreateCollaboration-request-creatorMemberAbilities).
  late final pulumi.Output<List<String>> creatorMemberAbilities;
  /// Collection of settings which determine how the [c3r client](https://docs.aws.amazon.com/clean-rooms/latest/userguide/crypto-computing.html) will encrypt data for use within this collaboration. See below.
  late final pulumi.Output<CollaborationDataEncryptionMetadata?> dataEncryptionMetadata;
  /// Description for a collaboration.
  late final pulumi.Output<String> description;
  /// Additional members of the collaboration which will be invited to join the collaboration. See below.
  late final pulumi.Output<List<Map<String, dynamic>>?> members;
  /// Name of the collaboration.  Collaboration names do not need to be unique.
  late final pulumi.Output<String> name;
  /// Whether members of the collaboration can enable query logs within their own memberships. Valid values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_CreateCollaboration.html#API-CreateCollaboration-request-queryLogStatus).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> queryLogStatus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key value pairs which tag the collaboration.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Date and time the collaboration was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Collaboration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Collaboration]. {@macro pulumi_cleanrooms_collaboration_collaboration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Collaboration(
    String name, {
    CollaborationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cleanrooms/collaboration:Collaboration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    analyticsEngine = registerOutput<String?>('analyticsEngine');
    arn = registerOutput<String>('arn');
    createTime = registerOutput<String>('createTime');
    creatorDisplayName = registerOutput<String>('creatorDisplayName');
    creatorMemberAbilities = registerOutput<List<String>>('creatorMemberAbilities');
    dataEncryptionMetadata = registerOutput<CollaborationDataEncryptionMetadata?>('dataEncryptionMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CollaborationDataEncryptionMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String>('description');
    members = registerOutput<List<Map<String, dynamic>>?>('members');
    this.name = registerOutput<String>('name');
    queryLogStatus = registerOutput<String>('queryLogStatus');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Collaboration] resource's state with the given [name] and [id].
  static Collaboration get(
    String name,
    pulumi.Input<String> id, {
    CollaborationState? state,
  }) {
    return Collaboration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Collaboration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cleanrooms/collaboration:Collaboration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    analyticsEngine = registerOutput<String?>('analyticsEngine');
    arn = registerOutput<String>('arn');
    createTime = registerOutput<String>('createTime');
    creatorDisplayName = registerOutput<String>('creatorDisplayName');
    creatorMemberAbilities = registerOutput<List<String>>('creatorMemberAbilities');
    dataEncryptionMetadata = registerOutput<CollaborationDataEncryptionMetadata?>('dataEncryptionMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CollaborationDataEncryptionMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String>('description');
    members = registerOutput<List<Map<String, dynamic>>?>('members');
    this.name = registerOutput<String>('name');
    queryLogStatus = registerOutput<String>('queryLogStatus');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    updateTime = registerOutput<String>('updateTime');
  }
}
