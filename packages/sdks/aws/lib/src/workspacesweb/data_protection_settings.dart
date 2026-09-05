import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_protection_settings_args.dart';
import 'data_protection_settings_inline_redaction_configuration.dart';
import 'data_protection_settings_state.dart';

/// Resource for managing an AWS WorkSpaces Web Data Protection Settings resource. Once associated with a web portal, data protection settings control how sensitive information is redacted in streaming sessions.
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
/// const example = new aws.workspacesweb.DataProtectionSettings("example", {displayName: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspacesweb.DataProtectionSettings("example", display_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WorkSpacesWeb.DataProtectionSettings("example", new()
///     {
///         DisplayName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workspacesweb.NewDataProtectionSettings(ctx, "example", &workspacesweb.DataProtectionSettingsArgs{
/// 			DisplayName: pulumi.String("example"),
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
/// resource "aws_workspacesweb_dataprotectionsettings" "example" {
///   display_name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspacesweb.DataProtectionSettings;
/// import com.pulumi.aws.workspacesweb.DataProtectionSettingsArgs;
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
///         var example = new DataProtectionSettings("example", DataProtectionSettingsArgs.builder()
///             .displayName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workspacesweb:DataProtectionSettings
///     properties:
///       displayName: example
/// ```
///
///
/// ### With Inline Redaction Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.workspacesweb.DataProtectionSettings("example", {
///     inlineRedactionConfiguration: {
///         inlineRedactionPatterns: [{
///             redactionPlaceHolders: [{
///                 redactionPlaceHolderType: "CustomText",
///                 redactionPlaceHolderText: "REDACTED",
///             }],
///             builtInPatternId: "ssn",
///             confidenceLevel: 3,
///         }],
///         globalConfidenceLevel: 2,
///         globalEnforcedUrls: ["https://example.com"],
///     },
///     displayName: "example",
///     description: "Example data protection settings",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspacesweb.DataProtectionSettings("example",
///     inline_redaction_configuration={
///         "inline_redaction_patterns": [{
///             "redaction_place_holders": [{
///                 "redaction_place_holder_type": "CustomText",
///                 "redaction_place_holder_text": "REDACTED",
///             }],
///             "built_in_pattern_id": "ssn",
///             "confidence_level": 3,
///         }],
///         "global_confidence_level": 2,
///         "global_enforced_urls": ["https://example.com"],
///     },
///     display_name="example",
///     description="Example data protection settings")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WorkSpacesWeb.DataProtectionSettings("example", new()
///     {
///         InlineRedactionConfiguration = new Aws.WorkSpacesWeb.Inputs.DataProtectionSettingsInlineRedactionConfigurationArgs
///         {
///             InlineRedactionPatterns = new[]
///             {
///                 new Aws.WorkSpacesWeb.Inputs.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs
///                 {
///                     RedactionPlaceHolders = new[]
///                     {
///                         new Aws.WorkSpacesWeb.Inputs.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs
///                         {
///                             RedactionPlaceHolderType = "CustomText",
///                             RedactionPlaceHolderText = "REDACTED",
///                         },
///                     },
///                     BuiltInPatternId = "ssn",
///                     ConfidenceLevel = 3,
///                 },
///             },
///             GlobalConfidenceLevel = 2,
///             GlobalEnforcedUrls = new[]
///             {
///                 "https://example.com",
///             },
///         },
///         DisplayName = "example",
///         Description = "Example data protection settings",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workspacesweb.NewDataProtectionSettings(ctx, "example", &workspacesweb.DataProtectionSettingsArgs{
/// 			InlineRedactionConfiguration: &workspacesweb.DataProtectionSettingsInlineRedactionConfigurationArgs{
/// 				InlineRedactionPatterns: workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArray{
/// 					&workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs{
/// 						RedactionPlaceHolders: workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArray{
/// 							&workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs{
/// 								RedactionPlaceHolderType: pulumi.String("CustomText"),
/// 								RedactionPlaceHolderText: pulumi.String("REDACTED"),
/// 							},
/// 						},
/// 						BuiltInPatternId: pulumi.String("ssn"),
/// 						ConfidenceLevel:  pulumi.Int(3),
/// 					},
/// 				},
/// 				GlobalConfidenceLevel: pulumi.Int(2),
/// 				GlobalEnforcedUrls: pulumi.StringArray{
/// 					pulumi.String("https://example.com"),
/// 				},
/// 			},
/// 			DisplayName: pulumi.String("example"),
/// 			Description: pulumi.String("Example data protection settings"),
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
/// resource "aws_workspacesweb_dataprotectionsettings" "example" {
///   inline_redaction_configuration = {
///     inline_redaction_patterns = [{
///       "redactionPlaceHolders" = [{
///         "redactionPlaceHolderType" = "CustomText"
///         "redactionPlaceHolderText" = "REDACTED"
///       }]
///       "builtInPatternId" = "ssn"
///       "confidenceLevel"  = 3
///     }]
///     global_confidence_level = 2
///     global_enforced_urls    = ["https://example.com"]
///   }
///   display_name = "example"
///   description  = "Example data protection settings"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspacesweb.DataProtectionSettings;
/// import com.pulumi.aws.workspacesweb.DataProtectionSettingsArgs;
/// import com.pulumi.aws.workspacesweb.inputs.DataProtectionSettingsInlineRedactionConfigurationArgs;
/// import com.pulumi.aws.workspacesweb.inputs.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs;
/// import com.pulumi.aws.workspacesweb.inputs.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs;
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
///         var example = new DataProtectionSettings("example", DataProtectionSettingsArgs.builder()
///             .inlineRedactionConfiguration(DataProtectionSettingsInlineRedactionConfigurationArgs.builder()
///                 .inlineRedactionPatterns(DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs.builder()
///                     .redactionPlaceHolders(DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs.builder()
///                         .redactionPlaceHolderType("CustomText")
///                         .redactionPlaceHolderText("REDACTED")
///                         .build())
///                     .builtInPatternId("ssn")
///                     .confidenceLevel(3)
///                     .build())
///                 .globalConfidenceLevel(2)
///                 .globalEnforcedUrls("https://example.com")
///                 .build())
///             .displayName("example")
///             .description("Example data protection settings")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workspacesweb:DataProtectionSettings
///     properties:
///       inlineRedactionConfiguration:
///         inlineRedactionPatterns:
///           - redactionPlaceHolders:
///               - redactionPlaceHolderType: CustomText
///                 redactionPlaceHolderText: REDACTED
///             builtInPatternId: ssn
///             confidenceLevel: 3
///         globalConfidenceLevel: 2
///         globalEnforcedUrls:
///           - https://example.com
///       displayName: example
///       description: Example data protection settings
/// ```
///
///
/// ### Complete Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {
///     description: "KMS key for WorkSpaces Web Data Protection Settings",
///     deletionWindowInDays: 7,
/// });
/// const exampleDataProtectionSettings = new aws.workspacesweb.DataProtectionSettings("example", {
///     inlineRedactionConfiguration: {
///         inlineRedactionPatterns: [
///             {
///                 redactionPlaceHolders: [{
///                     redactionPlaceHolderType: "CustomText",
///                     redactionPlaceHolderText: "REDACTED-SSN",
///                 }],
///                 builtInPatternId: "ssn",
///                 confidenceLevel: 3,
///                 enforcedUrls: ["https://pattern1.example.com"],
///                 exemptUrls: ["https://exempt-pattern1.example.com"],
///             },
///             {
///                 customPattern: {
///                     patternName: "CustomPattern",
///                     patternRegex: "/\\d{3}-\\d{2}-\\d{4}/g",
///                     keywordRegex: "/SSN|Social Security/gi",
///                     patternDescription: "Custom SSN pattern",
///                 },
///                 redactionPlaceHolders: [{
///                     redactionPlaceHolderType: "CustomText",
///                     redactionPlaceHolderText: "REDACTED-CUSTOM",
///                 }],
///             },
///         ],
///         globalConfidenceLevel: 2,
///         globalEnforcedUrls: [
///             "https://example.com",
///             "https://test.example.com",
///         ],
///         globalExemptUrls: ["https://exempt.example.com"],
///     },
///     displayName: "example-complete",
///     description: "Complete example data protection settings",
///     customerManagedKey: example.arn,
///     additionalEncryptionContext: {
///         Environment: "Production",
///     },
///     tags: {
///         Name: "example-data-protection-settings",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example",
///     description="KMS key for WorkSpaces Web Data Protection Settings",
///     deletion_window_in_days=7)
/// example_data_protection_settings = aws.workspacesweb.DataProtectionSettings("example",
///     inline_redaction_configuration={
///         "inline_redaction_patterns": [
///             {
///                 "redaction_place_holders": [{
///                     "redaction_place_holder_type": "CustomText",
///                     "redaction_place_holder_text": "REDACTED-SSN",
///                 }],
///                 "built_in_pattern_id": "ssn",
///                 "confidence_level": 3,
///                 "enforced_urls": ["https://pattern1.example.com"],
///                 "exempt_urls": ["https://exempt-pattern1.example.com"],
///             },
///             {
///                 "custom_pattern": {
///                     "pattern_name": "CustomPattern",
///                     "pattern_regex": "/\\d{3}-\\d{2}-\\d{4}/g",
///                     "keyword_regex": "/SSN|Social Security/gi",
///                     "pattern_description": "Custom SSN pattern",
///                 },
///                 "redaction_place_holders": [{
///                     "redaction_place_holder_type": "CustomText",
///                     "redaction_place_holder_text": "REDACTED-CUSTOM",
///                 }],
///             },
///         ],
///         "global_confidence_level": 2,
///         "global_enforced_urls": [
///             "https://example.com",
///             "https://test.example.com",
///         ],
///         "global_exempt_urls": ["https://exempt.example.com"],
///     },
///     display_name="example-complete",
///     description="Complete example data protection settings",
///     customer_managed_key=example.arn,
///     additional_encryption_context={
///         "Environment": "Production",
///     },
///     tags={
///         "Name": "example-data-protection-settings",
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
///     var example = new Aws.Kms.Key("example", new()
///     {
///         Description = "KMS key for WorkSpaces Web Data Protection Settings",
///         DeletionWindowInDays = 7,
///     });
///
///     var exampleDataProtectionSettings = new Aws.WorkSpacesWeb.DataProtectionSettings("example", new()
///     {
///         InlineRedactionConfiguration = new Aws.WorkSpacesWeb.Inputs.DataProtectionSettingsInlineRedactionConfigurationArgs
///         {
///             InlineRedactionPatterns = new[]
///             {
///                 new Aws.WorkSpacesWeb.Inputs.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs
///                 {
///                     RedactionPlaceHolders = new[]
///                     {
///                         new Aws.WorkSpacesWeb.Inputs.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs
///                         {
///                             RedactionPlaceHolderType = "CustomText",
///                             RedactionPlaceHolderText = "REDACTED-SSN",
///                         },
///                     },
///                     BuiltInPatternId = "ssn",
///                     ConfidenceLevel = 3,
///                     EnforcedUrls = new[]
///                     {
///                         "https://pattern1.example.com",
///                     },
///                     ExemptUrls = new[]
///                     {
///                         "https://exempt-pattern1.example.com",
///                     },
///                 },
///                 new Aws.WorkSpacesWeb.Inputs.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs
///                 {
///                     CustomPattern = new Aws.WorkSpacesWeb.Inputs.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPatternArgs
///                     {
///                         PatternName = "CustomPattern",
///                         PatternRegex = "/\\d{3}-\\d{2}-\\d{4}/g",
///                         KeywordRegex = "/SSN|Social Security/gi",
///                         PatternDescription = "Custom SSN pattern",
///                     },
///                     RedactionPlaceHolders = new[]
///                     {
///                         new Aws.WorkSpacesWeb.Inputs.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs
///                         {
///                             RedactionPlaceHolderType = "CustomText",
///                             RedactionPlaceHolderText = "REDACTED-CUSTOM",
///                         },
///                     },
///                 },
///             },
///             GlobalConfidenceLevel = 2,
///             GlobalEnforcedUrls = new[]
///             {
///                 "https://example.com",
///                 "https://test.example.com",
///             },
///             GlobalExemptUrls = new[]
///             {
///                 "https://exempt.example.com",
///             },
///         },
///         DisplayName = "example-complete",
///         Description = "Complete example data protection settings",
///         CustomerManagedKey = example.Arn,
///         AdditionalEncryptionContext =
///         {
///             { "Environment", "Production" },
///         },
///         Tags =
///         {
///             { "Name", "example-data-protection-settings" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description:          pulumi.String("KMS key for WorkSpaces Web Data Protection Settings"),
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workspacesweb.NewDataProtectionSettings(ctx, "example", &workspacesweb.DataProtectionSettingsArgs{
/// 			InlineRedactionConfiguration: &workspacesweb.DataProtectionSettingsInlineRedactionConfigurationArgs{
/// 				InlineRedactionPatterns: workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArray{
/// 					&workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs{
/// 						RedactionPlaceHolders: workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArray{
/// 							&workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs{
/// 								RedactionPlaceHolderType: pulumi.String("CustomText"),
/// 								RedactionPlaceHolderText: pulumi.String("REDACTED-SSN"),
/// 							},
/// 						},
/// 						BuiltInPatternId: pulumi.String("ssn"),
/// 						ConfidenceLevel:  pulumi.Int(3),
/// 						EnforcedUrls: pulumi.StringArray{
/// 							pulumi.String("https://pattern1.example.com"),
/// 						},
/// 						ExemptUrls: pulumi.StringArray{
/// 							pulumi.String("https://exempt-pattern1.example.com"),
/// 						},
/// 					},
/// 					&workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs{
/// 						CustomPattern: &workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPatternArgs{
/// 							PatternName:        pulumi.String("CustomPattern"),
/// 							PatternRegex:       pulumi.String("/\\d{3}-\\d{2}-\\d{4}/g"),
/// 							KeywordRegex:       pulumi.String("/SSN|Social Security/gi"),
/// 							PatternDescription: pulumi.String("Custom SSN pattern"),
/// 						},
/// 						RedactionPlaceHolders: workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArray{
/// 							&workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs{
/// 								RedactionPlaceHolderType: pulumi.String("CustomText"),
/// 								RedactionPlaceHolderText: pulumi.String("REDACTED-CUSTOM"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				GlobalConfidenceLevel: pulumi.Int(2),
/// 				GlobalEnforcedUrls: pulumi.StringArray{
/// 					pulumi.String("https://example.com"),
/// 					pulumi.String("https://test.example.com"),
/// 				},
/// 				GlobalExemptUrls: pulumi.StringArray{
/// 					pulumi.String("https://exempt.example.com"),
/// 				},
/// 			},
/// 			DisplayName:        pulumi.String("example-complete"),
/// 			Description:        pulumi.String("Complete example data protection settings"),
/// 			CustomerManagedKey: example.Arn,
/// 			AdditionalEncryptionContext: pulumi.StringMap{
/// 				"Environment": pulumi.String("Production"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-data-protection-settings"),
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
/// resource "aws_kms_key" "example" {
///   description             = "KMS key for WorkSpaces Web Data Protection Settings"
///   deletion_window_in_days = 7
/// }
/// resource "aws_workspacesweb_dataprotectionsettings" "example" {
///   inline_redaction_configuration = {
///     inline_redaction_patterns = [{
///       "redactionPlaceHolders" = [{
///         "redactionPlaceHolderType" = "CustomText"
///         "redactionPlaceHolderText" = "REDACTED-SSN"
///       }]
///       "builtInPatternId" = "ssn"
///       "confidenceLevel"  = 3
///       "enforcedUrls"     = ["https://pattern1.example.com"]
///       "exemptUrls"       = ["https://exempt-pattern1.example.com"]
///       }, {
///       "customPattern" = {
///         "patternName"        = "CustomPattern"
///         "patternRegex"       = "/\\d{3}-\\d{2}-\\d{4}/g"
///         "keywordRegex"       = "/SSN|Social Security/gi"
///         "patternDescription" = "Custom SSN pattern"
///       }
///       "redactionPlaceHolders" = [{
///         "redactionPlaceHolderType" = "CustomText"
///         "redactionPlaceHolderText" = "REDACTED-CUSTOM"
///       }]
///     }]
///     global_confidence_level = 2
///     global_enforced_urls    = ["https://example.com", "https://test.example.com"]
///     global_exempt_urls      = ["https://exempt.example.com"]
///   }
///   display_name         = "example-complete"
///   description          = "Complete example data protection settings"
///   customer_managed_key = aws_kms_key.example.arn
///   additional_encryption_context = {
///     "Environment" = "Production"
///   }
///   tags = {
///     "Name" = "example-data-protection-settings"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.workspacesweb.DataProtectionSettings;
/// import com.pulumi.aws.workspacesweb.DataProtectionSettingsArgs;
/// import com.pulumi.aws.workspacesweb.inputs.DataProtectionSettingsInlineRedactionConfigurationArgs;
/// import com.pulumi.aws.workspacesweb.inputs.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs;
/// import com.pulumi.aws.workspacesweb.inputs.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs;
/// import com.pulumi.aws.workspacesweb.inputs.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPatternArgs;
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
///         var example = new Key("example", KeyArgs.builder()
///             .description("KMS key for WorkSpaces Web Data Protection Settings")
///             .deletionWindowInDays(7)
///             .build());
///
///         var exampleDataProtectionSettings = new DataProtectionSettings("exampleDataProtectionSettings", DataProtectionSettingsArgs.builder()
///             .inlineRedactionConfiguration(DataProtectionSettingsInlineRedactionConfigurationArgs.builder()
///                 .inlineRedactionPatterns(
///                     DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs.builder()
///                         .redactionPlaceHolders(DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs.builder()
///                             .redactionPlaceHolderType("CustomText")
///                             .redactionPlaceHolderText("REDACTED-SSN")
///                             .build())
///                         .builtInPatternId("ssn")
///                         .confidenceLevel(3)
///                         .enforcedUrls("https://pattern1.example.com")
///                         .exemptUrls("https://exempt-pattern1.example.com")
///                         .build(),
///                     DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs.builder()
///                         .customPattern(DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPatternArgs.builder()
///                             .patternName("CustomPattern")
///                             .patternRegex("/\\d{3}-\\d{2}-\\d{4}/g")
///                             .keywordRegex("/SSN|Social Security/gi")
///                             .patternDescription("Custom SSN pattern")
///                             .build())
///                         .redactionPlaceHolders(DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs.builder()
///                             .redactionPlaceHolderType("CustomText")
///                             .redactionPlaceHolderText("REDACTED-CUSTOM")
///                             .build())
///                         .build())
///                 .globalConfidenceLevel(2)
///                 .globalEnforcedUrls(
///                     "https://example.com",
///                     "https://test.example.com")
///                 .globalExemptUrls("https://exempt.example.com")
///                 .build())
///             .displayName("example-complete")
///             .description("Complete example data protection settings")
///             .customerManagedKey(example.arn())
///             .additionalEncryptionContext(Map.of("Environment", "Production"))
///             .tags(Map.of("Name", "example-data-protection-settings"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///     properties:
///       description: KMS key for WorkSpaces Web Data Protection Settings
///       deletionWindowInDays: 7
///   exampleDataProtectionSettings:
///     type: aws:workspacesweb:DataProtectionSettings
///     name: example
///     properties:
///       inlineRedactionConfiguration:
///         inlineRedactionPatterns:
///           - redactionPlaceHolders:
///               - redactionPlaceHolderType: CustomText
///                 redactionPlaceHolderText: REDACTED-SSN
///             builtInPatternId: ssn
///             confidenceLevel: 3
///             enforcedUrls:
///               - https://pattern1.example.com
///             exemptUrls:
///               - https://exempt-pattern1.example.com
///           - customPattern:
///               patternName: CustomPattern
///               patternRegex: /\d{3}-\d{2}-\d{4}/g
///               keywordRegex: /SSN|Social Security/gi
///               patternDescription: Custom SSN pattern
///             redactionPlaceHolders:
///               - redactionPlaceHolderType: CustomText
///                 redactionPlaceHolderText: REDACTED-CUSTOM
///         globalConfidenceLevel: 2
///         globalEnforcedUrls:
///           - https://example.com
///           - https://test.example.com
///         globalExemptUrls:
///           - https://exempt.example.com
///       displayName: example-complete
///       description: Complete example data protection settings
///       customerManagedKey: ${example.arn}
///       additionalEncryptionContext:
///         Environment: Production
///       tags:
///         Name: example-data-protection-settings
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Data Protection Settings using the `dataProtectionSettingsArn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/dataProtectionSettings:DataProtectionSettings example arn:aws:workspaces-web:us-west-2:123456789012:dataprotectionsettings/abcdef12345
/// ```
class DataProtectionSettings extends pulumi.CustomResource {
  /// Additional encryption context for the data protection settings.
  late final pulumi.Output<Map<String, String>?> additionalEncryptionContext;
  /// List of web portal ARNs that this data protection settings resource is associated with.
  late final pulumi.Output<List<String>> associatedPortalArns;
  /// ARN of the customer managed KMS key.
  late final pulumi.Output<String?> customerManagedKey;
  /// ARN of the data protection settings resource.
  late final pulumi.Output<String> dataProtectionSettingsArn;
  /// The description of the data protection settings.
  late final pulumi.Output<String?> description;
  /// The display name of the data protection settings.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> displayName;
  /// The inline redaction configuration of the data protection settings. Detailed below.
  late final pulumi.Output<DataProtectionSettingsInlineRedactionConfiguration?> inlineRedactionConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [DataProtectionSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataProtectionSettings]. {@macro pulumi_workspacesweb_data_protection_settings_data_protection_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataProtectionSettings(
    String name, {
    DataProtectionSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/dataProtectionSettings:DataProtectionSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    additionalEncryptionContext = registerOutput<Map<String, String>?>('additionalEncryptionContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    associatedPortalArns = registerOutput<List<String>>('associatedPortalArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    customerManagedKey = registerOutput<String?>('customerManagedKey');
    dataProtectionSettingsArn = registerOutput<String>('dataProtectionSettingsArn');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    inlineRedactionConfiguration = registerOutput<DataProtectionSettingsInlineRedactionConfiguration?>('inlineRedactionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataProtectionSettingsInlineRedactionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [DataProtectionSettings] resource's state with the given [name] and [id].
  static DataProtectionSettings get(
    String name,
    pulumi.Input<String> id, {
    DataProtectionSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataProtectionSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataProtectionSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/dataProtectionSettings:DataProtectionSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalEncryptionContext = registerOutput<Map<String, String>?>('additionalEncryptionContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    associatedPortalArns = registerOutput<List<String>>('associatedPortalArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    customerManagedKey = registerOutput<String?>('customerManagedKey');
    dataProtectionSettingsArn = registerOutput<String>('dataProtectionSettingsArn');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    inlineRedactionConfiguration = registerOutput<DataProtectionSettingsInlineRedactionConfiguration?>('inlineRedactionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataProtectionSettingsInlineRedactionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [DataProtectionSettings] resource.
  DataProtectionSettings.reference(String urn)
    : super(
        'aws:workspacesweb/dataProtectionSettings:DataProtectionSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    additionalEncryptionContext = registerOutput<Map<String, String>?>('additionalEncryptionContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    associatedPortalArns = registerOutput<List<String>>('associatedPortalArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    customerManagedKey = registerOutput<String?>('customerManagedKey');
    dataProtectionSettingsArn = registerOutput<String>('dataProtectionSettingsArn');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    inlineRedactionConfiguration = registerOutput<DataProtectionSettingsInlineRedactionConfiguration?>('inlineRedactionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataProtectionSettingsInlineRedactionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
