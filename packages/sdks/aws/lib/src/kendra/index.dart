import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_args.dart';
import 'index_capacity_units.dart';
import 'index_document_metadata_configuration_update.dart';
import 'index_index_statistic.dart';
import 'index_server_side_encryption_configuration.dart';
import 'index_state.dart';
import 'index_user_group_resolution_configuration.dart';
import 'index_user_token_configurations.dart';

/// Provides an Amazon Kendra Index resource.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.Index("example", {
///     name: "example",
///     description: "example",
///     edition: "DEVELOPER_EDITION",
///     roleArn: _this.arn,
///     tags: {
///         Key1: "Value1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.Index("example",
///     name="example",
///     description="example",
///     edition="DEVELOPER_EDITION",
///     role_arn=this["arn"],
///     tags={
///         "Key1": "Value1",
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
///     var example = new Aws.Kendra.Index("example", new()
///     {
///         Name = "example",
///         Description = "example",
///         Edition = "DEVELOPER_EDITION",
///         RoleArn = @this.Arn,
///         Tags =
///         {
///             { "Key1", "Value1" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewIndex(ctx, "example", &kendra.IndexArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example"),
/// 			Edition:     pulumi.String("DEVELOPER_EDITION"),
/// 			RoleArn:     pulumi.Any(this.Arn),
/// 			Tags: pulumi.StringMap{
/// 				"Key1": pulumi.String("Value1"),
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
/// resource "aws_kendra_index" "example" {
///   name        = "example"
///   description = "example"
///   edition     = "DEVELOPER_EDITION"
///   role_arn    = this.arn
///   tags = {
///     "Key1" = "Value1"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.Index;
/// import com.pulumi.aws.kendra.IndexArgs;
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
///         var example = new Index("example", IndexArgs.builder()
///             .name("example")
///             .description("example")
///             .edition("DEVELOPER_EDITION")
///             .roleArn(this_.arn())
///             .tags(Map.of("Key1", "Value1"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:Index
///     properties:
///       name: example
///       description: example
///       edition: DEVELOPER_EDITION
///       roleArn: ${this.arn}
///       tags:
///         Key1: Value1
/// ```
///
///
/// ### With capacity units
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.Index("example", {
///     capacityUnits: {
///         queryCapacityUnits: 2,
///         storageCapacityUnits: 2,
///     },
///     name: "example",
///     edition: "DEVELOPER_EDITION",
///     roleArn: _this.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.Index("example",
///     capacity_units={
///         "query_capacity_units": 2,
///         "storage_capacity_units": 2,
///     },
///     name="example",
///     edition="DEVELOPER_EDITION",
///     role_arn=this["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.Index("example", new()
///     {
///         CapacityUnits = new Aws.Kendra.Inputs.IndexCapacityUnitsArgs
///         {
///             QueryCapacityUnits = 2,
///             StorageCapacityUnits = 2,
///         },
///         Name = "example",
///         Edition = "DEVELOPER_EDITION",
///         RoleArn = @this.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewIndex(ctx, "example", &kendra.IndexArgs{
/// 			CapacityUnits: &kendra.IndexCapacityUnitsArgs{
/// 				QueryCapacityUnits:   pulumi.Int(2),
/// 				StorageCapacityUnits: pulumi.Int(2),
/// 			},
/// 			Name:    pulumi.String("example"),
/// 			Edition: pulumi.String("DEVELOPER_EDITION"),
/// 			RoleArn: pulumi.Any(this.Arn),
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
/// resource "aws_kendra_index" "example" {
///   capacity_units = {
///     query_capacity_units   = 2
///     storage_capacity_units = 2
///   }
///   name     = "example"
///   edition  = "DEVELOPER_EDITION"
///   role_arn = this.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.Index;
/// import com.pulumi.aws.kendra.IndexArgs;
/// import com.pulumi.aws.kendra.inputs.IndexCapacityUnitsArgs;
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
///         var example = new Index("example", IndexArgs.builder()
///             .capacityUnits(IndexCapacityUnitsArgs.builder()
///                 .queryCapacityUnits(2)
///                 .storageCapacityUnits(2)
///                 .build())
///             .name("example")
///             .edition("DEVELOPER_EDITION")
///             .roleArn(this_.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:Index
///     properties:
///       capacityUnits:
///         queryCapacityUnits: 2
///         storageCapacityUnits: 2
///       name: example
///       edition: DEVELOPER_EDITION
///       roleArn: ${this.arn}
/// ```
///
///
/// ### With server side encryption configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.Index("example", {
///     serverSideEncryptionConfiguration: {
///         kmsKeyId: _this.arn,
///     },
///     name: "example",
///     roleArn: thisAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.Index("example",
///     server_side_encryption_configuration={
///         "kms_key_id": this["arn"],
///     },
///     name="example",
///     role_arn=this_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.Index("example", new()
///     {
///         ServerSideEncryptionConfiguration = new Aws.Kendra.Inputs.IndexServerSideEncryptionConfigurationArgs
///         {
///             KmsKeyId = @this.Arn,
///         },
///         Name = "example",
///         RoleArn = thisAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewIndex(ctx, "example", &kendra.IndexArgs{
/// 			ServerSideEncryptionConfiguration: &kendra.IndexServerSideEncryptionConfigurationArgs{
/// 				KmsKeyId: pulumi.Any(this.Arn),
/// 			},
/// 			Name:    pulumi.String("example"),
/// 			RoleArn: pulumi.Any(thisAwsIamRole.Arn),
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
/// resource "aws_kendra_index" "example" {
///   server_side_encryption_configuration = {
///     kms_key_id = this.arn
///   }
///   name     = "example"
///   role_arn = thisAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.Index;
/// import com.pulumi.aws.kendra.IndexArgs;
/// import com.pulumi.aws.kendra.inputs.IndexServerSideEncryptionConfigurationArgs;
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
///         var example = new Index("example", IndexArgs.builder()
///             .serverSideEncryptionConfiguration(IndexServerSideEncryptionConfigurationArgs.builder()
///                 .kmsKeyId(this_.arn())
///                 .build())
///             .name("example")
///             .roleArn(thisAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:Index
///     properties:
///       serverSideEncryptionConfiguration:
///         kmsKeyId: ${this.arn}
///       name: example
///       roleArn: ${thisAwsIamRole.arn}
/// ```
///
///
/// ### With user group resolution configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.Index("example", {
///     userGroupResolutionConfiguration: {
///         userGroupResolutionMode: "AWS_SSO",
///     },
///     name: "example",
///     roleArn: _this.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.Index("example",
///     user_group_resolution_configuration={
///         "user_group_resolution_mode": "AWS_SSO",
///     },
///     name="example",
///     role_arn=this["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.Index("example", new()
///     {
///         UserGroupResolutionConfiguration = new Aws.Kendra.Inputs.IndexUserGroupResolutionConfigurationArgs
///         {
///             UserGroupResolutionMode = "AWS_SSO",
///         },
///         Name = "example",
///         RoleArn = @this.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewIndex(ctx, "example", &kendra.IndexArgs{
/// 			UserGroupResolutionConfiguration: &kendra.IndexUserGroupResolutionConfigurationArgs{
/// 				UserGroupResolutionMode: pulumi.String("AWS_SSO"),
/// 			},
/// 			Name:    pulumi.String("example"),
/// 			RoleArn: pulumi.Any(this.Arn),
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
/// resource "aws_kendra_index" "example" {
///   user_group_resolution_configuration = {
///     user_group_resolution_mode = "AWS_SSO"
///   }
///   name     = "example"
///   role_arn = this.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.Index;
/// import com.pulumi.aws.kendra.IndexArgs;
/// import com.pulumi.aws.kendra.inputs.IndexUserGroupResolutionConfigurationArgs;
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
///         var example = new Index("example", IndexArgs.builder()
///             .userGroupResolutionConfiguration(IndexUserGroupResolutionConfigurationArgs.builder()
///                 .userGroupResolutionMode("AWS_SSO")
///                 .build())
///             .name("example")
///             .roleArn(this_.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:Index
///     properties:
///       userGroupResolutionConfiguration:
///         userGroupResolutionMode: AWS_SSO
///       name: example
///       roleArn: ${this.arn}
/// ```
///
///
/// ### With Document Metadata Configuration Updates
///
/// ### Specifying the predefined elements
///
/// Refer to [Amazon Kendra documentation on built-in document fields](https://docs.aws.amazon.com/kendra/latest/dg/hiw-index.html#index-reserved-fields) for more information.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.Index("example", {
///     documentMetadataConfigurationUpdates: [
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: false,
///             },
///             relevance: {
///                 importance: 1,
///             },
///             name: "_authors",
///             type: "STRING_LIST_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 1,
///                 valuesImportanceMap: {},
///             },
///             name: "_category",
///             type: "STRING_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 freshness: false,
///                 importance: 1,
///                 duration: "25920000s",
///                 rankOrder: "ASCENDING",
///             },
///             name: "_created_at",
///             type: "DATE_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 1,
///                 valuesImportanceMap: {},
///             },
///             name: "_data_source_id",
///             type: "STRING_VALUE",
///         },
///         {
///             search: {
///                 displayable: true,
///                 facetable: false,
///                 searchable: true,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 2,
///                 valuesImportanceMap: {},
///             },
///             name: "_document_title",
///             type: "STRING_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: false,
///             },
///             relevance: {
///                 importance: 2,
///                 rankOrder: "ASCENDING",
///             },
///             name: "_excerpt_page_number",
///             type: "LONG_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 1,
///                 valuesImportanceMap: {},
///             },
///             name: "_faq_id",
///             type: "STRING_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 1,
///                 valuesImportanceMap: {},
///             },
///             name: "_file_type",
///             type: "STRING_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 1,
///                 valuesImportanceMap: {},
///             },
///             name: "_language_code",
///             type: "STRING_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 freshness: false,
///                 importance: 1,
///                 duration: "25920000s",
///                 rankOrder: "ASCENDING",
///             },
///             name: "_last_updated_at",
///             type: "DATE_VALUE",
///         },
///         {
///             search: {
///                 displayable: true,
///                 facetable: false,
///                 searchable: false,
///                 sortable: false,
///             },
///             relevance: {
///                 importance: 1,
///                 valuesImportanceMap: {},
///             },
///             name: "_source_uri",
///             type: "STRING_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 1,
///                 valuesImportanceMap: {},
///             },
///             name: "_tenant_id",
///             type: "STRING_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 1,
///                 valuesImportanceMap: {},
///             },
///             name: "_version",
///             type: "STRING_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 1,
///                 rankOrder: "ASCENDING",
///             },
///             name: "_view_count",
///             type: "LONG_VALUE",
///         },
///     ],
///     name: "example",
///     roleArn: _this.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.Index("example",
///     document_metadata_configuration_updates=[
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": False,
///             },
///             "relevance": {
///                 "importance": 1,
///             },
///             "name": "_authors",
///             "type": "STRING_LIST_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "values_importance_map": {},
///             },
///             "name": "_category",
///             "type": "STRING_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "freshness": False,
///                 "importance": 1,
///                 "duration": "25920000s",
///                 "rank_order": "ASCENDING",
///             },
///             "name": "_created_at",
///             "type": "DATE_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "values_importance_map": {},
///             },
///             "name": "_data_source_id",
///             "type": "STRING_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": True,
///                 "facetable": False,
///                 "searchable": True,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 2,
///                 "values_importance_map": {},
///             },
///             "name": "_document_title",
///             "type": "STRING_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": False,
///             },
///             "relevance": {
///                 "importance": 2,
///                 "rank_order": "ASCENDING",
///             },
///             "name": "_excerpt_page_number",
///             "type": "LONG_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "values_importance_map": {},
///             },
///             "name": "_faq_id",
///             "type": "STRING_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "values_importance_map": {},
///             },
///             "name": "_file_type",
///             "type": "STRING_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "values_importance_map": {},
///             },
///             "name": "_language_code",
///             "type": "STRING_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "freshness": False,
///                 "importance": 1,
///                 "duration": "25920000s",
///                 "rank_order": "ASCENDING",
///             },
///             "name": "_last_updated_at",
///             "type": "DATE_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": True,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": False,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "values_importance_map": {},
///             },
///             "name": "_source_uri",
///             "type": "STRING_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "values_importance_map": {},
///             },
///             "name": "_tenant_id",
///             "type": "STRING_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "values_importance_map": {},
///             },
///             "name": "_version",
///             "type": "STRING_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "rank_order": "ASCENDING",
///             },
///             "name": "_view_count",
///             "type": "LONG_VALUE",
///         },
///     ],
///     name="example",
///     role_arn=this["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.Index("example", new()
///     {
///         DocumentMetadataConfigurationUpdates = new[]
///         {
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = false,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                 },
///                 Name = "_authors",
///                 Type = "STRING_LIST_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     ValuesImportanceMap = null,
///                 },
///                 Name = "_category",
///                 Type = "STRING_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Freshness = false,
///                     Importance = 1,
///                     Duration = "25920000s",
///                     RankOrder = "ASCENDING",
///                 },
///                 Name = "_created_at",
///                 Type = "DATE_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     ValuesImportanceMap = null,
///                 },
///                 Name = "_data_source_id",
///                 Type = "STRING_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = true,
///                     Facetable = false,
///                     Searchable = true,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 2,
///                     ValuesImportanceMap = null,
///                 },
///                 Name = "_document_title",
///                 Type = "STRING_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = false,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 2,
///                     RankOrder = "ASCENDING",
///                 },
///                 Name = "_excerpt_page_number",
///                 Type = "LONG_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     ValuesImportanceMap = null,
///                 },
///                 Name = "_faq_id",
///                 Type = "STRING_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     ValuesImportanceMap = null,
///                 },
///                 Name = "_file_type",
///                 Type = "STRING_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     ValuesImportanceMap = null,
///                 },
///                 Name = "_language_code",
///                 Type = "STRING_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Freshness = false,
///                     Importance = 1,
///                     Duration = "25920000s",
///                     RankOrder = "ASCENDING",
///                 },
///                 Name = "_last_updated_at",
///                 Type = "DATE_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = true,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = false,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     ValuesImportanceMap = null,
///                 },
///                 Name = "_source_uri",
///                 Type = "STRING_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     ValuesImportanceMap = null,
///                 },
///                 Name = "_tenant_id",
///                 Type = "STRING_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     ValuesImportanceMap = null,
///                 },
///                 Name = "_version",
///                 Type = "STRING_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     RankOrder = "ASCENDING",
///                 },
///                 Name = "_view_count",
///                 Type = "LONG_VALUE",
///             },
///         },
///         Name = "example",
///         RoleArn = @this.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewIndex(ctx, "example", &kendra.IndexArgs{
/// 			DocumentMetadataConfigurationUpdates: kendra.IndexDocumentMetadataConfigurationUpdateArray{
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(false),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance: pulumi.Int(1),
/// 					},
/// 					Name: pulumi.String("_authors"),
/// 					Type: pulumi.String("STRING_LIST_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance:          pulumi.Int(1),
/// 						ValuesImportanceMap: pulumi.IntMap{},
/// 					},
/// 					Name: pulumi.String("_category"),
/// 					Type: pulumi.String("STRING_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Freshness:  pulumi.Bool(false),
/// 						Importance: pulumi.Int(1),
/// 						Duration:   pulumi.String("25920000s"),
/// 						RankOrder:  pulumi.String("ASCENDING"),
/// 					},
/// 					Name: pulumi.String("_created_at"),
/// 					Type: pulumi.String("DATE_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance:          pulumi.Int(1),
/// 						ValuesImportanceMap: pulumi.IntMap{},
/// 					},
/// 					Name: pulumi.String("_data_source_id"),
/// 					Type: pulumi.String("STRING_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(true),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(true),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance:          pulumi.Int(2),
/// 						ValuesImportanceMap: pulumi.IntMap{},
/// 					},
/// 					Name: pulumi.String("_document_title"),
/// 					Type: pulumi.String("STRING_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(false),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance: pulumi.Int(2),
/// 						RankOrder:  pulumi.String("ASCENDING"),
/// 					},
/// 					Name: pulumi.String("_excerpt_page_number"),
/// 					Type: pulumi.String("LONG_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance:          pulumi.Int(1),
/// 						ValuesImportanceMap: pulumi.IntMap{},
/// 					},
/// 					Name: pulumi.String("_faq_id"),
/// 					Type: pulumi.String("STRING_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance:          pulumi.Int(1),
/// 						ValuesImportanceMap: pulumi.IntMap{},
/// 					},
/// 					Name: pulumi.String("_file_type"),
/// 					Type: pulumi.String("STRING_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance:          pulumi.Int(1),
/// 						ValuesImportanceMap: pulumi.IntMap{},
/// 					},
/// 					Name: pulumi.String("_language_code"),
/// 					Type: pulumi.String("STRING_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Freshness:  pulumi.Bool(false),
/// 						Importance: pulumi.Int(1),
/// 						Duration:   pulumi.String("25920000s"),
/// 						RankOrder:  pulumi.String("ASCENDING"),
/// 					},
/// 					Name: pulumi.String("_last_updated_at"),
/// 					Type: pulumi.String("DATE_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(true),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(false),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance:          pulumi.Int(1),
/// 						ValuesImportanceMap: pulumi.IntMap{},
/// 					},
/// 					Name: pulumi.String("_source_uri"),
/// 					Type: pulumi.String("STRING_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance:          pulumi.Int(1),
/// 						ValuesImportanceMap: pulumi.IntMap{},
/// 					},
/// 					Name: pulumi.String("_tenant_id"),
/// 					Type: pulumi.String("STRING_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance:          pulumi.Int(1),
/// 						ValuesImportanceMap: pulumi.IntMap{},
/// 					},
/// 					Name: pulumi.String("_version"),
/// 					Type: pulumi.String("STRING_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance: pulumi.Int(1),
/// 						RankOrder:  pulumi.String("ASCENDING"),
/// 					},
/// 					Name: pulumi.String("_view_count"),
/// 					Type: pulumi.String("LONG_VALUE"),
/// 				},
/// 			},
/// 			Name:    pulumi.String("example"),
/// 			RoleArn: pulumi.Any(this.Arn),
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
/// resource "aws_kendra_index" "example" {
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = false
///     }
///     relevance = {
///       importance = 1
///     }
///     name = "_authors"
///     type = "STRING_LIST_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       importance            = 1
///       values_importance_map = {}
///     }
///     name = "_category"
///     type = "STRING_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       freshness  = false
///       importance = 1
///       duration   = "25920000s"
///       rank_order = "ASCENDING"
///     }
///     name = "_created_at"
///     type = "DATE_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       importance            = 1
///       values_importance_map = {}
///     }
///     name = "_data_source_id"
///     type = "STRING_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = true
///       facetable   = false
///       searchable  = true
///       sortable    = true
///     }
///     relevance = {
///       importance            = 2
///       values_importance_map = {}
///     }
///     name = "_document_title"
///     type = "STRING_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = false
///     }
///     relevance = {
///       importance = 2
///       rank_order = "ASCENDING"
///     }
///     name = "_excerpt_page_number"
///     type = "LONG_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       importance            = 1
///       values_importance_map = {}
///     }
///     name = "_faq_id"
///     type = "STRING_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       importance            = 1
///       values_importance_map = {}
///     }
///     name = "_file_type"
///     type = "STRING_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       importance            = 1
///       values_importance_map = {}
///     }
///     name = "_language_code"
///     type = "STRING_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       freshness  = false
///       importance = 1
///       duration   = "25920000s"
///       rank_order = "ASCENDING"
///     }
///     name = "_last_updated_at"
///     type = "DATE_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = true
///       facetable   = false
///       searchable  = false
///       sortable    = false
///     }
///     relevance = {
///       importance            = 1
///       values_importance_map = {}
///     }
///     name = "_source_uri"
///     type = "STRING_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       importance            = 1
///       values_importance_map = {}
///     }
///     name = "_tenant_id"
///     type = "STRING_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       importance            = 1
///       values_importance_map = {}
///     }
///     name = "_version"
///     type = "STRING_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       importance = 1
///       rank_order = "ASCENDING"
///     }
///     name = "_view_count"
///     type = "LONG_VALUE"
///   }
///   name     = "example"
///   role_arn = this.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.Index;
/// import com.pulumi.aws.kendra.IndexArgs;
/// import com.pulumi.aws.kendra.inputs.IndexDocumentMetadataConfigurationUpdateArgs;
/// import com.pulumi.aws.kendra.inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs;
/// import com.pulumi.aws.kendra.inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs;
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
///         var example = new Index("example", IndexArgs.builder()
///             .documentMetadataConfigurationUpdates(
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(false)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .build())
///                     .name("_authors")
///                     .type("STRING_LIST_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .valuesImportanceMap(Map.ofEntries(
///                         ))
///                         .build())
///                     .name("_category")
///                     .type("STRING_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .freshness(false)
///                         .importance(1)
///                         .duration("25920000s")
///                         .rankOrder("ASCENDING")
///                         .build())
///                     .name("_created_at")
///                     .type("DATE_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .valuesImportanceMap(Map.ofEntries(
///                         ))
///                         .build())
///                     .name("_data_source_id")
///                     .type("STRING_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(true)
///                         .facetable(false)
///                         .searchable(true)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(2)
///                         .valuesImportanceMap(Map.ofEntries(
///                         ))
///                         .build())
///                     .name("_document_title")
///                     .type("STRING_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(false)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(2)
///                         .rankOrder("ASCENDING")
///                         .build())
///                     .name("_excerpt_page_number")
///                     .type("LONG_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .valuesImportanceMap(Map.ofEntries(
///                         ))
///                         .build())
///                     .name("_faq_id")
///                     .type("STRING_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .valuesImportanceMap(Map.ofEntries(
///                         ))
///                         .build())
///                     .name("_file_type")
///                     .type("STRING_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .valuesImportanceMap(Map.ofEntries(
///                         ))
///                         .build())
///                     .name("_language_code")
///                     .type("STRING_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .freshness(false)
///                         .importance(1)
///                         .duration("25920000s")
///                         .rankOrder("ASCENDING")
///                         .build())
///                     .name("_last_updated_at")
///                     .type("DATE_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(true)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(false)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .valuesImportanceMap(Map.ofEntries(
///                         ))
///                         .build())
///                     .name("_source_uri")
///                     .type("STRING_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .valuesImportanceMap(Map.ofEntries(
///                         ))
///                         .build())
///                     .name("_tenant_id")
///                     .type("STRING_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .valuesImportanceMap(Map.ofEntries(
///                         ))
///                         .build())
///                     .name("_version")
///                     .type("STRING_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .rankOrder("ASCENDING")
///                         .build())
///                     .name("_view_count")
///                     .type("LONG_VALUE")
///                     .build())
///             .name("example")
///             .roleArn(this_.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:Index
///     properties:
///       documentMetadataConfigurationUpdates:
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: false
///           relevance:
///             importance: 1
///           name: _authors
///           type: STRING_LIST_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             importance: 1
///             valuesImportanceMap: {}
///           name: _category
///           type: STRING_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             freshness: false
///             importance: 1
///             duration: 25920000s
///             rankOrder: ASCENDING
///           name: _created_at
///           type: DATE_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             importance: 1
///             valuesImportanceMap: {}
///           name: _data_source_id
///           type: STRING_VALUE
///         - search:
///             displayable: true
///             facetable: false
///             searchable: true
///             sortable: true
///           relevance:
///             importance: 2
///             valuesImportanceMap: {}
///           name: _document_title
///           type: STRING_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: false
///           relevance:
///             importance: 2
///             rankOrder: ASCENDING
///           name: _excerpt_page_number
///           type: LONG_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             importance: 1
///             valuesImportanceMap: {}
///           name: _faq_id
///           type: STRING_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             importance: 1
///             valuesImportanceMap: {}
///           name: _file_type
///           type: STRING_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             importance: 1
///             valuesImportanceMap: {}
///           name: _language_code
///           type: STRING_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             freshness: false
///             importance: 1
///             duration: 25920000s
///             rankOrder: ASCENDING
///           name: _last_updated_at
///           type: DATE_VALUE
///         - search:
///             displayable: true
///             facetable: false
///             searchable: false
///             sortable: false
///           relevance:
///             importance: 1
///             valuesImportanceMap: {}
///           name: _source_uri
///           type: STRING_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             importance: 1
///             valuesImportanceMap: {}
///           name: _tenant_id
///           type: STRING_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             importance: 1
///             valuesImportanceMap: {}
///           name: _version
///           type: STRING_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             importance: 1
///             rankOrder: ASCENDING
///           name: _view_count
///           type: LONG_VALUE
///       name: example
///       roleArn: ${this.arn}
/// ```
///
///
/// ### Appending additional elements
///
/// The example below shows additional elements with names, `example-string-value`, `example-long-value`, `example-string-list-value`, `example-date-value` representing the 4 types of `STRING_VALUE`, `LONG_VALUE`, `STRING_LIST_VALUE`, `DATE_VALUE` respectively.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.Index("example", {
///     documentMetadataConfigurationUpdates: [
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: false,
///             },
///             relevance: {
///                 importance: 1,
///             },
///             name: "_authors",
///             type: "STRING_LIST_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 1,
///                 valuesImportanceMap: {},
///             },
///             name: "_category",
///             type: "STRING_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 freshness: false,
///                 importance: 1,
///                 duration: "25920000s",
///                 rankOrder: "ASCENDING",
///             },
///             name: "_created_at",
///             type: "DATE_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 1,
///                 valuesImportanceMap: {},
///             },
///             name: "_data_source_id",
///             type: "STRING_VALUE",
///         },
///         {
///             search: {
///                 displayable: true,
///                 facetable: false,
///                 searchable: true,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 2,
///                 valuesImportanceMap: {},
///             },
///             name: "_document_title",
///             type: "STRING_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: false,
///             },
///             relevance: {
///                 importance: 2,
///                 rankOrder: "ASCENDING",
///             },
///             name: "_excerpt_page_number",
///             type: "LONG_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 1,
///                 valuesImportanceMap: {},
///             },
///             name: "_faq_id",
///             type: "STRING_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 1,
///                 valuesImportanceMap: {},
///             },
///             name: "_file_type",
///             type: "STRING_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 1,
///                 valuesImportanceMap: {},
///             },
///             name: "_language_code",
///             type: "STRING_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 freshness: false,
///                 importance: 1,
///                 duration: "25920000s",
///                 rankOrder: "ASCENDING",
///             },
///             name: "_last_updated_at",
///             type: "DATE_VALUE",
///         },
///         {
///             search: {
///                 displayable: true,
///                 facetable: false,
///                 searchable: false,
///                 sortable: false,
///             },
///             relevance: {
///                 importance: 1,
///                 valuesImportanceMap: {},
///             },
///             name: "_source_uri",
///             type: "STRING_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 1,
///                 valuesImportanceMap: {},
///             },
///             name: "_tenant_id",
///             type: "STRING_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 1,
///                 valuesImportanceMap: {},
///             },
///             name: "_version",
///             type: "STRING_VALUE",
///         },
///         {
///             search: {
///                 displayable: false,
///                 facetable: false,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 1,
///                 rankOrder: "ASCENDING",
///             },
///             name: "_view_count",
///             type: "LONG_VALUE",
///         },
///         {
///             search: {
///                 displayable: true,
///                 facetable: true,
///                 searchable: true,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 1,
///                 valuesImportanceMap: {},
///             },
///             name: "example-string-value",
///             type: "STRING_VALUE",
///         },
///         {
///             search: {
///                 displayable: true,
///                 facetable: true,
///                 searchable: false,
///                 sortable: true,
///             },
///             relevance: {
///                 importance: 1,
///                 rankOrder: "ASCENDING",
///             },
///             name: "example-long-value",
///             type: "LONG_VALUE",
///         },
///         {
///             search: {
///                 displayable: true,
///                 facetable: true,
///                 searchable: true,
///                 sortable: false,
///             },
///             relevance: {
///                 importance: 1,
///             },
///             name: "example-string-list-value",
///             type: "STRING_LIST_VALUE",
///         },
///         {
///             search: {
///                 displayable: true,
///                 facetable: true,
///                 searchable: false,
///                 sortable: false,
///             },
///             relevance: {
///                 freshness: false,
///                 importance: 1,
///                 duration: "25920000s",
///                 rankOrder: "ASCENDING",
///             },
///             name: "example-date-value",
///             type: "DATE_VALUE",
///         },
///     ],
///     name: "example",
///     roleArn: _this.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.Index("example",
///     document_metadata_configuration_updates=[
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": False,
///             },
///             "relevance": {
///                 "importance": 1,
///             },
///             "name": "_authors",
///             "type": "STRING_LIST_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "values_importance_map": {},
///             },
///             "name": "_category",
///             "type": "STRING_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "freshness": False,
///                 "importance": 1,
///                 "duration": "25920000s",
///                 "rank_order": "ASCENDING",
///             },
///             "name": "_created_at",
///             "type": "DATE_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "values_importance_map": {},
///             },
///             "name": "_data_source_id",
///             "type": "STRING_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": True,
///                 "facetable": False,
///                 "searchable": True,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 2,
///                 "values_importance_map": {},
///             },
///             "name": "_document_title",
///             "type": "STRING_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": False,
///             },
///             "relevance": {
///                 "importance": 2,
///                 "rank_order": "ASCENDING",
///             },
///             "name": "_excerpt_page_number",
///             "type": "LONG_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "values_importance_map": {},
///             },
///             "name": "_faq_id",
///             "type": "STRING_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "values_importance_map": {},
///             },
///             "name": "_file_type",
///             "type": "STRING_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "values_importance_map": {},
///             },
///             "name": "_language_code",
///             "type": "STRING_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "freshness": False,
///                 "importance": 1,
///                 "duration": "25920000s",
///                 "rank_order": "ASCENDING",
///             },
///             "name": "_last_updated_at",
///             "type": "DATE_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": True,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": False,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "values_importance_map": {},
///             },
///             "name": "_source_uri",
///             "type": "STRING_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "values_importance_map": {},
///             },
///             "name": "_tenant_id",
///             "type": "STRING_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "values_importance_map": {},
///             },
///             "name": "_version",
///             "type": "STRING_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": False,
///                 "facetable": False,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "rank_order": "ASCENDING",
///             },
///             "name": "_view_count",
///             "type": "LONG_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": True,
///                 "facetable": True,
///                 "searchable": True,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "values_importance_map": {},
///             },
///             "name": "example-string-value",
///             "type": "STRING_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": True,
///                 "facetable": True,
///                 "searchable": False,
///                 "sortable": True,
///             },
///             "relevance": {
///                 "importance": 1,
///                 "rank_order": "ASCENDING",
///             },
///             "name": "example-long-value",
///             "type": "LONG_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": True,
///                 "facetable": True,
///                 "searchable": True,
///                 "sortable": False,
///             },
///             "relevance": {
///                 "importance": 1,
///             },
///             "name": "example-string-list-value",
///             "type": "STRING_LIST_VALUE",
///         },
///         {
///             "search": {
///                 "displayable": True,
///                 "facetable": True,
///                 "searchable": False,
///                 "sortable": False,
///             },
///             "relevance": {
///                 "freshness": False,
///                 "importance": 1,
///                 "duration": "25920000s",
///                 "rank_order": "ASCENDING",
///             },
///             "name": "example-date-value",
///             "type": "DATE_VALUE",
///         },
///     ],
///     name="example",
///     role_arn=this["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.Index("example", new()
///     {
///         DocumentMetadataConfigurationUpdates = new[]
///         {
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = false,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                 },
///                 Name = "_authors",
///                 Type = "STRING_LIST_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     ValuesImportanceMap = null,
///                 },
///                 Name = "_category",
///                 Type = "STRING_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Freshness = false,
///                     Importance = 1,
///                     Duration = "25920000s",
///                     RankOrder = "ASCENDING",
///                 },
///                 Name = "_created_at",
///                 Type = "DATE_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     ValuesImportanceMap = null,
///                 },
///                 Name = "_data_source_id",
///                 Type = "STRING_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = true,
///                     Facetable = false,
///                     Searchable = true,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 2,
///                     ValuesImportanceMap = null,
///                 },
///                 Name = "_document_title",
///                 Type = "STRING_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = false,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 2,
///                     RankOrder = "ASCENDING",
///                 },
///                 Name = "_excerpt_page_number",
///                 Type = "LONG_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     ValuesImportanceMap = null,
///                 },
///                 Name = "_faq_id",
///                 Type = "STRING_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     ValuesImportanceMap = null,
///                 },
///                 Name = "_file_type",
///                 Type = "STRING_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     ValuesImportanceMap = null,
///                 },
///                 Name = "_language_code",
///                 Type = "STRING_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Freshness = false,
///                     Importance = 1,
///                     Duration = "25920000s",
///                     RankOrder = "ASCENDING",
///                 },
///                 Name = "_last_updated_at",
///                 Type = "DATE_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = true,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = false,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     ValuesImportanceMap = null,
///                 },
///                 Name = "_source_uri",
///                 Type = "STRING_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     ValuesImportanceMap = null,
///                 },
///                 Name = "_tenant_id",
///                 Type = "STRING_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     ValuesImportanceMap = null,
///                 },
///                 Name = "_version",
///                 Type = "STRING_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = false,
///                     Facetable = false,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     RankOrder = "ASCENDING",
///                 },
///                 Name = "_view_count",
///                 Type = "LONG_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = true,
///                     Facetable = true,
///                     Searchable = true,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     ValuesImportanceMap = null,
///                 },
///                 Name = "example-string-value",
///                 Type = "STRING_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = true,
///                     Facetable = true,
///                     Searchable = false,
///                     Sortable = true,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                     RankOrder = "ASCENDING",
///                 },
///                 Name = "example-long-value",
///                 Type = "LONG_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = true,
///                     Facetable = true,
///                     Searchable = true,
///                     Sortable = false,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Importance = 1,
///                 },
///                 Name = "example-string-list-value",
///                 Type = "STRING_LIST_VALUE",
///             },
///             new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateArgs
///             {
///                 Search = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs
///                 {
///                     Displayable = true,
///                     Facetable = true,
///                     Searchable = false,
///                     Sortable = false,
///                 },
///                 Relevance = new Aws.Kendra.Inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs
///                 {
///                     Freshness = false,
///                     Importance = 1,
///                     Duration = "25920000s",
///                     RankOrder = "ASCENDING",
///                 },
///                 Name = "example-date-value",
///                 Type = "DATE_VALUE",
///             },
///         },
///         Name = "example",
///         RoleArn = @this.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewIndex(ctx, "example", &kendra.IndexArgs{
/// 			DocumentMetadataConfigurationUpdates: kendra.IndexDocumentMetadataConfigurationUpdateArray{
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(false),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance: pulumi.Int(1),
/// 					},
/// 					Name: pulumi.String("_authors"),
/// 					Type: pulumi.String("STRING_LIST_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance:          pulumi.Int(1),
/// 						ValuesImportanceMap: pulumi.IntMap{},
/// 					},
/// 					Name: pulumi.String("_category"),
/// 					Type: pulumi.String("STRING_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Freshness:  pulumi.Bool(false),
/// 						Importance: pulumi.Int(1),
/// 						Duration:   pulumi.String("25920000s"),
/// 						RankOrder:  pulumi.String("ASCENDING"),
/// 					},
/// 					Name: pulumi.String("_created_at"),
/// 					Type: pulumi.String("DATE_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance:          pulumi.Int(1),
/// 						ValuesImportanceMap: pulumi.IntMap{},
/// 					},
/// 					Name: pulumi.String("_data_source_id"),
/// 					Type: pulumi.String("STRING_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(true),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(true),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance:          pulumi.Int(2),
/// 						ValuesImportanceMap: pulumi.IntMap{},
/// 					},
/// 					Name: pulumi.String("_document_title"),
/// 					Type: pulumi.String("STRING_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(false),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance: pulumi.Int(2),
/// 						RankOrder:  pulumi.String("ASCENDING"),
/// 					},
/// 					Name: pulumi.String("_excerpt_page_number"),
/// 					Type: pulumi.String("LONG_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance:          pulumi.Int(1),
/// 						ValuesImportanceMap: pulumi.IntMap{},
/// 					},
/// 					Name: pulumi.String("_faq_id"),
/// 					Type: pulumi.String("STRING_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance:          pulumi.Int(1),
/// 						ValuesImportanceMap: pulumi.IntMap{},
/// 					},
/// 					Name: pulumi.String("_file_type"),
/// 					Type: pulumi.String("STRING_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance:          pulumi.Int(1),
/// 						ValuesImportanceMap: pulumi.IntMap{},
/// 					},
/// 					Name: pulumi.String("_language_code"),
/// 					Type: pulumi.String("STRING_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Freshness:  pulumi.Bool(false),
/// 						Importance: pulumi.Int(1),
/// 						Duration:   pulumi.String("25920000s"),
/// 						RankOrder:  pulumi.String("ASCENDING"),
/// 					},
/// 					Name: pulumi.String("_last_updated_at"),
/// 					Type: pulumi.String("DATE_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(true),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(false),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance:          pulumi.Int(1),
/// 						ValuesImportanceMap: pulumi.IntMap{},
/// 					},
/// 					Name: pulumi.String("_source_uri"),
/// 					Type: pulumi.String("STRING_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance:          pulumi.Int(1),
/// 						ValuesImportanceMap: pulumi.IntMap{},
/// 					},
/// 					Name: pulumi.String("_tenant_id"),
/// 					Type: pulumi.String("STRING_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance:          pulumi.Int(1),
/// 						ValuesImportanceMap: pulumi.IntMap{},
/// 					},
/// 					Name: pulumi.String("_version"),
/// 					Type: pulumi.String("STRING_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(false),
/// 						Facetable:   pulumi.Bool(false),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance: pulumi.Int(1),
/// 						RankOrder:  pulumi.String("ASCENDING"),
/// 					},
/// 					Name: pulumi.String("_view_count"),
/// 					Type: pulumi.String("LONG_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(true),
/// 						Facetable:   pulumi.Bool(true),
/// 						Searchable:  pulumi.Bool(true),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance:          pulumi.Int(1),
/// 						ValuesImportanceMap: pulumi.IntMap{},
/// 					},
/// 					Name: pulumi.String("example-string-value"),
/// 					Type: pulumi.String("STRING_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(true),
/// 						Facetable:   pulumi.Bool(true),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(true),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance: pulumi.Int(1),
/// 						RankOrder:  pulumi.String("ASCENDING"),
/// 					},
/// 					Name: pulumi.String("example-long-value"),
/// 					Type: pulumi.String("LONG_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(true),
/// 						Facetable:   pulumi.Bool(true),
/// 						Searchable:  pulumi.Bool(true),
/// 						Sortable:    pulumi.Bool(false),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Importance: pulumi.Int(1),
/// 					},
/// 					Name: pulumi.String("example-string-list-value"),
/// 					Type: pulumi.String("STRING_LIST_VALUE"),
/// 				},
/// 				&kendra.IndexDocumentMetadataConfigurationUpdateArgs{
/// 					Search: &kendra.IndexDocumentMetadataConfigurationUpdateSearchArgs{
/// 						Displayable: pulumi.Bool(true),
/// 						Facetable:   pulumi.Bool(true),
/// 						Searchable:  pulumi.Bool(false),
/// 						Sortable:    pulumi.Bool(false),
/// 					},
/// 					Relevance: &kendra.IndexDocumentMetadataConfigurationUpdateRelevanceArgs{
/// 						Freshness:  pulumi.Bool(false),
/// 						Importance: pulumi.Int(1),
/// 						Duration:   pulumi.String("25920000s"),
/// 						RankOrder:  pulumi.String("ASCENDING"),
/// 					},
/// 					Name: pulumi.String("example-date-value"),
/// 					Type: pulumi.String("DATE_VALUE"),
/// 				},
/// 			},
/// 			Name:    pulumi.String("example"),
/// 			RoleArn: pulumi.Any(this.Arn),
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
/// resource "aws_kendra_index" "example" {
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = false
///     }
///     relevance = {
///       importance = 1
///     }
///     name = "_authors"
///     type = "STRING_LIST_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       importance            = 1
///       values_importance_map = {}
///     }
///     name = "_category"
///     type = "STRING_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       freshness  = false
///       importance = 1
///       duration   = "25920000s"
///       rank_order = "ASCENDING"
///     }
///     name = "_created_at"
///     type = "DATE_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       importance            = 1
///       values_importance_map = {}
///     }
///     name = "_data_source_id"
///     type = "STRING_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = true
///       facetable   = false
///       searchable  = true
///       sortable    = true
///     }
///     relevance = {
///       importance            = 2
///       values_importance_map = {}
///     }
///     name = "_document_title"
///     type = "STRING_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = false
///     }
///     relevance = {
///       importance = 2
///       rank_order = "ASCENDING"
///     }
///     name = "_excerpt_page_number"
///     type = "LONG_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       importance            = 1
///       values_importance_map = {}
///     }
///     name = "_faq_id"
///     type = "STRING_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       importance            = 1
///       values_importance_map = {}
///     }
///     name = "_file_type"
///     type = "STRING_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       importance            = 1
///       values_importance_map = {}
///     }
///     name = "_language_code"
///     type = "STRING_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       freshness  = false
///       importance = 1
///       duration   = "25920000s"
///       rank_order = "ASCENDING"
///     }
///     name = "_last_updated_at"
///     type = "DATE_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = true
///       facetable   = false
///       searchable  = false
///       sortable    = false
///     }
///     relevance = {
///       importance            = 1
///       values_importance_map = {}
///     }
///     name = "_source_uri"
///     type = "STRING_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       importance            = 1
///       values_importance_map = {}
///     }
///     name = "_tenant_id"
///     type = "STRING_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       importance            = 1
///       values_importance_map = {}
///     }
///     name = "_version"
///     type = "STRING_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = false
///       facetable   = false
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       importance = 1
///       rank_order = "ASCENDING"
///     }
///     name = "_view_count"
///     type = "LONG_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = true
///       facetable   = true
///       searchable  = true
///       sortable    = true
///     }
///     relevance = {
///       importance            = 1
///       values_importance_map = {}
///     }
///     name = "example-string-value"
///     type = "STRING_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = true
///       facetable   = true
///       searchable  = false
///       sortable    = true
///     }
///     relevance = {
///       importance = 1
///       rank_order = "ASCENDING"
///     }
///     name = "example-long-value"
///     type = "LONG_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = true
///       facetable   = true
///       searchable  = true
///       sortable    = false
///     }
///     relevance = {
///       importance = 1
///     }
///     name = "example-string-list-value"
///     type = "STRING_LIST_VALUE"
///   }
///   document_metadata_configuration_updates {
///     search = {
///       displayable = true
///       facetable   = true
///       searchable  = false
///       sortable    = false
///     }
///     relevance = {
///       freshness  = false
///       importance = 1
///       duration   = "25920000s"
///       rank_order = "ASCENDING"
///     }
///     name = "example-date-value"
///     type = "DATE_VALUE"
///   }
///   name     = "example"
///   role_arn = this.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.Index;
/// import com.pulumi.aws.kendra.IndexArgs;
/// import com.pulumi.aws.kendra.inputs.IndexDocumentMetadataConfigurationUpdateArgs;
/// import com.pulumi.aws.kendra.inputs.IndexDocumentMetadataConfigurationUpdateSearchArgs;
/// import com.pulumi.aws.kendra.inputs.IndexDocumentMetadataConfigurationUpdateRelevanceArgs;
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
///         var example = new Index("example", IndexArgs.builder()
///             .documentMetadataConfigurationUpdates(
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(false)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .build())
///                     .name("_authors")
///                     .type("STRING_LIST_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .valuesImportanceMap(Map.ofEntries(
///                         ))
///                         .build())
///                     .name("_category")
///                     .type("STRING_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .freshness(false)
///                         .importance(1)
///                         .duration("25920000s")
///                         .rankOrder("ASCENDING")
///                         .build())
///                     .name("_created_at")
///                     .type("DATE_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .valuesImportanceMap(Map.ofEntries(
///                         ))
///                         .build())
///                     .name("_data_source_id")
///                     .type("STRING_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(true)
///                         .facetable(false)
///                         .searchable(true)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(2)
///                         .valuesImportanceMap(Map.ofEntries(
///                         ))
///                         .build())
///                     .name("_document_title")
///                     .type("STRING_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(false)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(2)
///                         .rankOrder("ASCENDING")
///                         .build())
///                     .name("_excerpt_page_number")
///                     .type("LONG_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .valuesImportanceMap(Map.ofEntries(
///                         ))
///                         .build())
///                     .name("_faq_id")
///                     .type("STRING_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .valuesImportanceMap(Map.ofEntries(
///                         ))
///                         .build())
///                     .name("_file_type")
///                     .type("STRING_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .valuesImportanceMap(Map.ofEntries(
///                         ))
///                         .build())
///                     .name("_language_code")
///                     .type("STRING_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .freshness(false)
///                         .importance(1)
///                         .duration("25920000s")
///                         .rankOrder("ASCENDING")
///                         .build())
///                     .name("_last_updated_at")
///                     .type("DATE_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(true)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(false)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .valuesImportanceMap(Map.ofEntries(
///                         ))
///                         .build())
///                     .name("_source_uri")
///                     .type("STRING_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .valuesImportanceMap(Map.ofEntries(
///                         ))
///                         .build())
///                     .name("_tenant_id")
///                     .type("STRING_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .valuesImportanceMap(Map.ofEntries(
///                         ))
///                         .build())
///                     .name("_version")
///                     .type("STRING_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(false)
///                         .facetable(false)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .rankOrder("ASCENDING")
///                         .build())
///                     .name("_view_count")
///                     .type("LONG_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(true)
///                         .facetable(true)
///                         .searchable(true)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .valuesImportanceMap(Map.ofEntries(
///                         ))
///                         .build())
///                     .name("example-string-value")
///                     .type("STRING_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(true)
///                         .facetable(true)
///                         .searchable(false)
///                         .sortable(true)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .rankOrder("ASCENDING")
///                         .build())
///                     .name("example-long-value")
///                     .type("LONG_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(true)
///                         .facetable(true)
///                         .searchable(true)
///                         .sortable(false)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .importance(1)
///                         .build())
///                     .name("example-string-list-value")
///                     .type("STRING_LIST_VALUE")
///                     .build(),
///                 IndexDocumentMetadataConfigurationUpdateArgs.builder()
///                     .search(IndexDocumentMetadataConfigurationUpdateSearchArgs.builder()
///                         .displayable(true)
///                         .facetable(true)
///                         .searchable(false)
///                         .sortable(false)
///                         .build())
///                     .relevance(IndexDocumentMetadataConfigurationUpdateRelevanceArgs.builder()
///                         .freshness(false)
///                         .importance(1)
///                         .duration("25920000s")
///                         .rankOrder("ASCENDING")
///                         .build())
///                     .name("example-date-value")
///                     .type("DATE_VALUE")
///                     .build())
///             .name("example")
///             .roleArn(this_.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:Index
///     properties:
///       documentMetadataConfigurationUpdates:
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: false
///           relevance:
///             importance: 1
///           name: _authors
///           type: STRING_LIST_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             importance: 1
///             valuesImportanceMap: {}
///           name: _category
///           type: STRING_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             freshness: false
///             importance: 1
///             duration: 25920000s
///             rankOrder: ASCENDING
///           name: _created_at
///           type: DATE_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             importance: 1
///             valuesImportanceMap: {}
///           name: _data_source_id
///           type: STRING_VALUE
///         - search:
///             displayable: true
///             facetable: false
///             searchable: true
///             sortable: true
///           relevance:
///             importance: 2
///             valuesImportanceMap: {}
///           name: _document_title
///           type: STRING_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: false
///           relevance:
///             importance: 2
///             rankOrder: ASCENDING
///           name: _excerpt_page_number
///           type: LONG_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             importance: 1
///             valuesImportanceMap: {}
///           name: _faq_id
///           type: STRING_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             importance: 1
///             valuesImportanceMap: {}
///           name: _file_type
///           type: STRING_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             importance: 1
///             valuesImportanceMap: {}
///           name: _language_code
///           type: STRING_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             freshness: false
///             importance: 1
///             duration: 25920000s
///             rankOrder: ASCENDING
///           name: _last_updated_at
///           type: DATE_VALUE
///         - search:
///             displayable: true
///             facetable: false
///             searchable: false
///             sortable: false
///           relevance:
///             importance: 1
///             valuesImportanceMap: {}
///           name: _source_uri
///           type: STRING_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             importance: 1
///             valuesImportanceMap: {}
///           name: _tenant_id
///           type: STRING_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             importance: 1
///             valuesImportanceMap: {}
///           name: _version
///           type: STRING_VALUE
///         - search:
///             displayable: false
///             facetable: false
///             searchable: false
///             sortable: true
///           relevance:
///             importance: 1
///             rankOrder: ASCENDING
///           name: _view_count
///           type: LONG_VALUE
///         - search:
///             displayable: true
///             facetable: true
///             searchable: true
///             sortable: true
///           relevance:
///             importance: 1
///             valuesImportanceMap: {}
///           name: example-string-value
///           type: STRING_VALUE
///         - search:
///             displayable: true
///             facetable: true
///             searchable: false
///             sortable: true
///           relevance:
///             importance: 1
///             rankOrder: ASCENDING
///           name: example-long-value
///           type: LONG_VALUE
///         - search:
///             displayable: true
///             facetable: true
///             searchable: true
///             sortable: false
///           relevance:
///             importance: 1
///           name: example-string-list-value
///           type: STRING_LIST_VALUE
///         - search:
///             displayable: true
///             facetable: true
///             searchable: false
///             sortable: false
///           relevance:
///             freshness: false
///             importance: 1
///             duration: 25920000s
///             rankOrder: ASCENDING
///           name: example-date-value
///           type: DATE_VALUE
///       name: example
///       roleArn: ${this.arn}
/// ```
///
///
/// ### With JSON token type configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.Index("example", {
///     userTokenConfigurations: {
///         jsonTokenTypeConfiguration: {
///             groupAttributeField: "groups",
///             userNameAttributeField: "username",
///         },
///     },
///     name: "example",
///     roleArn: _this.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.Index("example",
///     user_token_configurations={
///         "json_token_type_configuration": {
///             "group_attribute_field": "groups",
///             "user_name_attribute_field": "username",
///         },
///     },
///     name="example",
///     role_arn=this["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.Index("example", new()
///     {
///         UserTokenConfigurations = new Aws.Kendra.Inputs.IndexUserTokenConfigurationsArgs
///         {
///             JsonTokenTypeConfiguration = new Aws.Kendra.Inputs.IndexUserTokenConfigurationsJsonTokenTypeConfigurationArgs
///             {
///                 GroupAttributeField = "groups",
///                 UserNameAttributeField = "username",
///             },
///         },
///         Name = "example",
///         RoleArn = @this.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewIndex(ctx, "example", &kendra.IndexArgs{
/// 			UserTokenConfigurations: &kendra.IndexUserTokenConfigurationsArgs{
/// 				JsonTokenTypeConfiguration: &kendra.IndexUserTokenConfigurationsJsonTokenTypeConfigurationArgs{
/// 					GroupAttributeField:    pulumi.String("groups"),
/// 					UserNameAttributeField: pulumi.String("username"),
/// 				},
/// 			},
/// 			Name:    pulumi.String("example"),
/// 			RoleArn: pulumi.Any(this.Arn),
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
/// resource "aws_kendra_index" "example" {
///   user_token_configurations = {
///     json_token_type_configuration = {
///       group_attribute_field     = "groups"
///       user_name_attribute_field = "username"
///     }
///   }
///   name     = "example"
///   role_arn = this.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.Index;
/// import com.pulumi.aws.kendra.IndexArgs;
/// import com.pulumi.aws.kendra.inputs.IndexUserTokenConfigurationsArgs;
/// import com.pulumi.aws.kendra.inputs.IndexUserTokenConfigurationsJsonTokenTypeConfigurationArgs;
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
///         var example = new Index("example", IndexArgs.builder()
///             .userTokenConfigurations(IndexUserTokenConfigurationsArgs.builder()
///                 .jsonTokenTypeConfiguration(IndexUserTokenConfigurationsJsonTokenTypeConfigurationArgs.builder()
///                     .groupAttributeField("groups")
///                     .userNameAttributeField("username")
///                     .build())
///                 .build())
///             .name("example")
///             .roleArn(this_.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:Index
///     properties:
///       userTokenConfigurations:
///         jsonTokenTypeConfiguration:
///           groupAttributeField: groups
///           userNameAttributeField: username
///       name: example
///       roleArn: ${this.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Kendra Indexes using its `id`. For example:
///
/// ```sh
/// $ pulumi import aws:kendra/index:Index example 12345678-1234-5678-9123-123456789123
/// ```
class Index extends pulumi.CustomResource {
  /// ARN of the Index.
  late final pulumi.Output<String> arn;
  /// A block that sets the number of additional document storage and query capacity units that should be used by the index. Detailed below.
  late final pulumi.Output<IndexCapacityUnits> capacityUnits;
  /// The Unix datetime that the index was created.
  late final pulumi.Output<String> createdAt;
  /// The description of the Index.
  late final pulumi.Output<String?> description;
  /// One or more blocks that specify the configuration settings for any metadata applied to the documents in the index. Minimum number of 0 items. Maximum number of 500 items. If specified, you must define all elements, including those that are provided by default. These index fields are documented at [Amazon Kendra Index documentation](https://docs.aws.amazon.com/kendra/latest/dg/hiw-index.html). For an example resource that defines these default index fields, refer to the default example above. For an example resource that appends additional index fields, refer to the append example above. All arguments for each block must be specified. Note that blocks cannot be removed since index fields cannot be deleted. This argument is detailed below.
  late final pulumi.Output<List<IndexDocumentMetadataConfigurationUpdate>> documentMetadataConfigurationUpdates;
  /// The Amazon Kendra edition to use for the index. Choose `DEVELOPER_EDITION` for indexes intended for development, testing, or proof of concept. Use `ENTERPRISE_EDITION` for your production databases. Use `GEN_AI_ENTERPRISE_EDITION` for creating generative AI applications. Once you set the edition for an index, it can't be changed. Defaults to `ENTERPRISE_EDITION`.
  late final pulumi.Output<String?> edition;
  /// When the Status field value is `FAILED`, this contains a message that explains why.
  late final pulumi.Output<String> errorMessage;
  /// A block that provides information about the number of FAQ questions and answers and the number of text documents indexed. Detailed below.
  late final pulumi.Output<List<IndexIndexStatistic>> indexStatistics;
  /// Specifies the name of the Index.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// An AWS Identity and Access Management (IAM) role that gives Amazon Kendra permissions to access your Amazon CloudWatch logs and metrics. This is also the role you use when you call the `BatchPutDocument` API to index documents from an Amazon S3 bucket.
  late final pulumi.Output<String> roleArn;
  /// A block that specifies the identifier of the AWS KMS customer managed key (CMK) that's used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs. Detailed below.
  late final pulumi.Output<IndexServerSideEncryptionConfiguration?> serverSideEncryptionConfiguration;
  /// The current status of the index. When the value is `ACTIVE`, the index is ready for use. If the Status field value is `FAILED`, the `errorMessage` field contains a message that explains why.
  late final pulumi.Output<String> status;
  /// Tags to apply to the Index. If configured with a provider
  /// `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The Unix datetime that the index was last updated.
  late final pulumi.Output<String> updatedAt;
  /// The user context policy. Valid values are `ATTRIBUTE_FILTER` or `USER_TOKEN`. For more information, refer to [UserContextPolicy](https://docs.aws.amazon.com/kendra/latest/APIReference/API_CreateIndex.html#kendra-CreateIndex-request-UserContextPolicy). Defaults to `ATTRIBUTE_FILTER`.
  late final pulumi.Output<String?> userContextPolicy;
  /// A block that enables fetching access levels of groups and users from an AWS Single Sign-On identity source. To configure this, see [UserGroupResolutionConfiguration](https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html). Detailed below.
  late final pulumi.Output<IndexUserGroupResolutionConfiguration?> userGroupResolutionConfiguration;
  /// A block that specifies the user token configuration. Detailed below.
  late final pulumi.Output<IndexUserTokenConfigurations?> userTokenConfigurations;

  /// Creates a new [Index].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Index]. {@macro pulumi_kendra_index_index_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Index(
    String name, {
    IndexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kendra/index:Index',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    capacityUnits = registerOutput<IndexCapacityUnits>('capacityUnits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IndexCapacityUnits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    documentMetadataConfigurationUpdates = registerOutput<List<IndexDocumentMetadataConfigurationUpdate>>('documentMetadataConfigurationUpdates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IndexDocumentMetadataConfigurationUpdate>(guardedValue, (value) => IndexDocumentMetadataConfigurationUpdate.fromMap((value as Map).cast<String, dynamic>())); });
    edition = registerOutput<String?>('edition');
    errorMessage = registerOutput<String>('errorMessage');
    indexStatistics = registerOutput<List<IndexIndexStatistic>>('indexStatistics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IndexIndexStatistic>(guardedValue, (value) => IndexIndexStatistic.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    serverSideEncryptionConfiguration = registerOutput<IndexServerSideEncryptionConfiguration?>('serverSideEncryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IndexServerSideEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
    userContextPolicy = registerOutput<String?>('userContextPolicy');
    userGroupResolutionConfiguration = registerOutput<IndexUserGroupResolutionConfiguration?>('userGroupResolutionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IndexUserGroupResolutionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    userTokenConfigurations = registerOutput<IndexUserTokenConfigurations?>('userTokenConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IndexUserTokenConfigurations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Index] resource's state with the given [name] and [id].
  static Index get(
    String name,
    pulumi.Input<String> id, {
    IndexState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Index._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Index._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kendra/index:Index',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    capacityUnits = registerOutput<IndexCapacityUnits>('capacityUnits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IndexCapacityUnits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    documentMetadataConfigurationUpdates = registerOutput<List<IndexDocumentMetadataConfigurationUpdate>>('documentMetadataConfigurationUpdates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IndexDocumentMetadataConfigurationUpdate>(guardedValue, (value) => IndexDocumentMetadataConfigurationUpdate.fromMap((value as Map).cast<String, dynamic>())); });
    edition = registerOutput<String?>('edition');
    errorMessage = registerOutput<String>('errorMessage');
    indexStatistics = registerOutput<List<IndexIndexStatistic>>('indexStatistics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IndexIndexStatistic>(guardedValue, (value) => IndexIndexStatistic.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    serverSideEncryptionConfiguration = registerOutput<IndexServerSideEncryptionConfiguration?>('serverSideEncryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IndexServerSideEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
    userContextPolicy = registerOutput<String?>('userContextPolicy');
    userGroupResolutionConfiguration = registerOutput<IndexUserGroupResolutionConfiguration?>('userGroupResolutionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IndexUserGroupResolutionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    userTokenConfigurations = registerOutput<IndexUserTokenConfigurations?>('userTokenConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IndexUserTokenConfigurations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Index] resource.
  Index.reference(String urn)
    : super(
        'aws:kendra/index:Index',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    capacityUnits = registerOutput<IndexCapacityUnits>('capacityUnits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IndexCapacityUnits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    documentMetadataConfigurationUpdates = registerOutput<List<IndexDocumentMetadataConfigurationUpdate>>('documentMetadataConfigurationUpdates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IndexDocumentMetadataConfigurationUpdate>(guardedValue, (value) => IndexDocumentMetadataConfigurationUpdate.fromMap((value as Map).cast<String, dynamic>())); });
    edition = registerOutput<String?>('edition');
    errorMessage = registerOutput<String>('errorMessage');
    indexStatistics = registerOutput<List<IndexIndexStatistic>>('indexStatistics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IndexIndexStatistic>(guardedValue, (value) => IndexIndexStatistic.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    serverSideEncryptionConfiguration = registerOutput<IndexServerSideEncryptionConfiguration?>('serverSideEncryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IndexServerSideEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
    userContextPolicy = registerOutput<String?>('userContextPolicy');
    userGroupResolutionConfiguration = registerOutput<IndexUserGroupResolutionConfiguration?>('userGroupResolutionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IndexUserGroupResolutionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    userTokenConfigurations = registerOutput<IndexUserTokenConfigurations?>('userTokenConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IndexUserTokenConfigurations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
