import 'package:pulumi/pulumi.dart';
import '../data_protection_settings_inline_redaction_configuration/data_protection_settings_inline_redaction_configuration.dart';
import 'data_protection_settings_args.dart';

/// Resource for managing an AWS WorkSpaces Web Data Protection Settings resource. Once associated with a web portal, data protection settings control how sensitive information is redacted in streaming sessions.
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
/// var example = new Aws.WorkSpacesWeb.DataProtectionSettings("example", new()
/// {
/// DisplayName = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := workspacesweb.NewDataProtectionSettings(ctx, "example", &workspacesweb.DataProtectionSettingsArgs{
/// DisplayName: pulumi.String("example"),
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
/// import com.pulumi.aws.workspacesweb.DataProtectionSettings;
/// import com.pulumi.aws.workspacesweb.DataProtectionSettingsArgs;
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
/// var example = new DataProtectionSettings("example", DataProtectionSettingsArgs.builder()
/// .displayName("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:workspacesweb:DataProtectionSettings
/// properties:
/// displayName: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Inline Redaction Configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.workspacesweb.DataProtectionSettings("example", {
/// displayName: "example",
/// description: "Example data protection settings",
/// inlineRedactionConfiguration: {
/// globalConfidenceLevel: 2,
/// globalEnforcedUrls: ["https://example.com"],
/// inlineRedactionPatterns: [{
/// builtInPatternId: "ssn",
/// confidenceLevel: 3,
/// redactionPlaceHolders: [{
/// redactionPlaceHolderType: "CustomText",
/// redactionPlaceHolderText: "REDACTED",
/// }],
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspacesweb.DataProtectionSettings("example",
/// display_name="example",
/// description="Example data protection settings",
/// inline_redaction_configuration={
/// "global_confidence_level": 2,
/// "global_enforced_urls": ["https://example.com"],
/// "inline_redaction_patterns": [{
/// "built_in_pattern_id": "ssn",
/// "confidence_level": 3,
/// "redaction_place_holders": [{
/// "redaction_place_holder_type": "CustomText",
/// "redaction_place_holder_text": "REDACTED",
/// }],
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.WorkSpacesWeb.DataProtectionSettings("example", new()
/// {
/// DisplayName = "example",
/// Description = "Example data protection settings",
/// InlineRedactionConfiguration = new Aws.WorkSpacesWeb.Inputs.DataProtectionSettingsInlineRedactionConfigurationArgs
/// {
/// GlobalConfidenceLevel = 2,
/// GlobalEnforcedUrls = new[]
/// {
/// "https://example.com",
/// },
/// InlineRedactionPatterns = new[]
/// {
/// new Aws.WorkSpacesWeb.Inputs.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs
/// {
/// BuiltInPatternId = "ssn",
/// ConfidenceLevel = 3,
/// RedactionPlaceHolders = new[]
/// {
/// new Aws.WorkSpacesWeb.Inputs.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs
/// {
/// RedactionPlaceHolderType = "CustomText",
/// RedactionPlaceHolderText = "REDACTED",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := workspacesweb.NewDataProtectionSettings(ctx, "example", &workspacesweb.DataProtectionSettingsArgs{
/// DisplayName: pulumi.String("example"),
/// Description: pulumi.String("Example data protection settings"),
/// InlineRedactionConfiguration: &workspacesweb.DataProtectionSettingsInlineRedactionConfigurationArgs{
/// GlobalConfidenceLevel: pulumi.Int(2),
/// GlobalEnforcedUrls: pulumi.StringArray{
/// pulumi.String("https://example.com"),
/// },
/// InlineRedactionPatterns: workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArray{
/// &workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs{
/// BuiltInPatternId: pulumi.String("ssn"),
/// ConfidenceLevel:  pulumi.Int(3),
/// RedactionPlaceHolders: workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArray{
/// &workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs{
/// RedactionPlaceHolderType: pulumi.String("CustomText"),
/// RedactionPlaceHolderText: pulumi.String("REDACTED"),
/// },
/// },
/// },
/// },
/// },
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
/// import com.pulumi.aws.workspacesweb.DataProtectionSettings;
/// import com.pulumi.aws.workspacesweb.DataProtectionSettingsArgs;
/// import com.pulumi.aws.workspacesweb.inputs.DataProtectionSettingsInlineRedactionConfigurationArgs;
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
/// var example = new DataProtectionSettings("example", DataProtectionSettingsArgs.builder()
/// .displayName("example")
/// .description("Example data protection settings")
/// .inlineRedactionConfiguration(DataProtectionSettingsInlineRedactionConfigurationArgs.builder()
/// .globalConfidenceLevel(2)
/// .globalEnforcedUrls("https://example.com")
/// .inlineRedactionPatterns(DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs.builder()
/// .builtInPatternId("ssn")
/// .confidenceLevel(3)
/// .redactionPlaceHolders(DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs.builder()
/// .redactionPlaceHolderType("CustomText")
/// .redactionPlaceHolderText("REDACTED")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:workspacesweb:DataProtectionSettings
/// properties:
/// displayName: example
/// description: Example data protection settings
/// inlineRedactionConfiguration:
/// globalConfidenceLevel: 2
/// globalEnforcedUrls:
/// - https://example.com
/// inlineRedactionPatterns:
/// - builtInPatternId: ssn
/// confidenceLevel: 3
/// redactionPlaceHolders:
/// - redactionPlaceHolderType: CustomText
/// redactionPlaceHolderText: REDACTED
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Complete Example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {
/// description: "KMS key for WorkSpaces Web Data Protection Settings",
/// deletionWindowInDays: 7,
/// });
/// const exampleDataProtectionSettings = new aws.workspacesweb.DataProtectionSettings("example", {
/// displayName: "example-complete",
/// description: "Complete example data protection settings",
/// customerManagedKey: example.arn,
/// additionalEncryptionContext: {
/// Environment: "Production",
/// },
/// inlineRedactionConfiguration: {
/// globalConfidenceLevel: 2,
/// globalEnforcedUrls: [
/// "https://example.com",
/// "https://test.example.com",
/// ],
/// globalExemptUrls: ["https://exempt.example.com"],
/// inlineRedactionPatterns: [
/// {
/// builtInPatternId: "ssn",
/// confidenceLevel: 3,
/// enforcedUrls: ["https://pattern1.example.com"],
/// exemptUrls: ["https://exempt-pattern1.example.com"],
/// redactionPlaceHolders: [{
/// redactionPlaceHolderType: "CustomText",
/// redactionPlaceHolderText: "REDACTED-SSN",
/// }],
/// },
/// {
/// customPattern: {
/// patternName: "CustomPattern",
/// patternRegex: "/\\d{3}-\\d{2}-\\d{4}/g",
/// keywordRegex: "/SSN|Social Security/gi",
/// patternDescription: "Custom SSN pattern",
/// },
/// redactionPlaceHolders: [{
/// redactionPlaceHolderType: "CustomText",
/// redactionPlaceHolderText: "REDACTED-CUSTOM",
/// }],
/// },
/// ],
/// },
/// tags: {
/// Name: "example-data-protection-settings",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example",
/// description="KMS key for WorkSpaces Web Data Protection Settings",
/// deletion_window_in_days=7)
/// example_data_protection_settings = aws.workspacesweb.DataProtectionSettings("example",
/// display_name="example-complete",
/// description="Complete example data protection settings",
/// customer_managed_key=example.arn,
/// additional_encryption_context={
/// "Environment": "Production",
/// },
/// inline_redaction_configuration={
/// "global_confidence_level": 2,
/// "global_enforced_urls": [
/// "https://example.com",
/// "https://test.example.com",
/// ],
/// "global_exempt_urls": ["https://exempt.example.com"],
/// "inline_redaction_patterns": [
/// {
/// "built_in_pattern_id": "ssn",
/// "confidence_level": 3,
/// "enforced_urls": ["https://pattern1.example.com"],
/// "exempt_urls": ["https://exempt-pattern1.example.com"],
/// "redaction_place_holders": [{
/// "redaction_place_holder_type": "CustomText",
/// "redaction_place_holder_text": "REDACTED-SSN",
/// }],
/// },
/// {
/// "custom_pattern": {
/// "pattern_name": "CustomPattern",
/// "pattern_regex": "/\\d{3}-\\d{2}-\\d{4}/g",
/// "keyword_regex": "/SSN|Social Security/gi",
/// "pattern_description": "Custom SSN pattern",
/// },
/// "redaction_place_holders": [{
/// "redaction_place_holder_type": "CustomText",
/// "redaction_place_holder_text": "REDACTED-CUSTOM",
/// }],
/// },
/// ],
/// },
/// tags={
/// "Name": "example-data-protection-settings",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Kms.Key("example", new()
/// {
/// Description = "KMS key for WorkSpaces Web Data Protection Settings",
/// DeletionWindowInDays = 7,
/// });
///
/// var exampleDataProtectionSettings = new Aws.WorkSpacesWeb.DataProtectionSettings("example", new()
/// {
/// DisplayName = "example-complete",
/// Description = "Complete example data protection settings",
/// CustomerManagedKey = example.Arn,
/// AdditionalEncryptionContext =
/// {
/// { "Environment", "Production" },
/// },
/// InlineRedactionConfiguration = new Aws.WorkSpacesWeb.Inputs.DataProtectionSettingsInlineRedactionConfigurationArgs
/// {
/// GlobalConfidenceLevel = 2,
/// GlobalEnforcedUrls = new[]
/// {
/// "https://example.com",
/// "https://test.example.com",
/// },
/// GlobalExemptUrls = new[]
/// {
/// "https://exempt.example.com",
/// },
/// InlineRedactionPatterns = new[]
/// {
/// new Aws.WorkSpacesWeb.Inputs.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs
/// {
/// BuiltInPatternId = "ssn",
/// ConfidenceLevel = 3,
/// EnforcedUrls = new[]
/// {
/// "https://pattern1.example.com",
/// },
/// ExemptUrls = new[]
/// {
/// "https://exempt-pattern1.example.com",
/// },
/// RedactionPlaceHolders = new[]
/// {
/// new Aws.WorkSpacesWeb.Inputs.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs
/// {
/// RedactionPlaceHolderType = "CustomText",
/// RedactionPlaceHolderText = "REDACTED-SSN",
/// },
/// },
/// },
/// new Aws.WorkSpacesWeb.Inputs.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs
/// {
/// CustomPattern = new Aws.WorkSpacesWeb.Inputs.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPatternArgs
/// {
/// PatternName = "CustomPattern",
/// PatternRegex = "/\\d{3}-\\d{2}-\\d{4}/g",
/// KeywordRegex = "/SSN|Social Security/gi",
/// PatternDescription = "Custom SSN pattern",
/// },
/// RedactionPlaceHolders = new[]
/// {
/// new Aws.WorkSpacesWeb.Inputs.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs
/// {
/// RedactionPlaceHolderType = "CustomText",
/// RedactionPlaceHolderText = "REDACTED-CUSTOM",
/// },
/// },
/// },
/// },
/// },
/// Tags =
/// {
/// { "Name", "example-data-protection-settings" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// Description:          pulumi.String("KMS key for WorkSpaces Web Data Protection Settings"),
/// DeletionWindowInDays: pulumi.Int(7),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = workspacesweb.NewDataProtectionSettings(ctx, "example", &workspacesweb.DataProtectionSettingsArgs{
/// DisplayName:        pulumi.String("example-complete"),
/// Description:        pulumi.String("Complete example data protection settings"),
/// CustomerManagedKey: example.Arn,
/// AdditionalEncryptionContext: pulumi.StringMap{
/// "Environment": pulumi.String("Production"),
/// },
/// InlineRedactionConfiguration: &workspacesweb.DataProtectionSettingsInlineRedactionConfigurationArgs{
/// GlobalConfidenceLevel: pulumi.Int(2),
/// GlobalEnforcedUrls: pulumi.StringArray{
/// pulumi.String("https://example.com"),
/// pulumi.String("https://test.example.com"),
/// },
/// GlobalExemptUrls: pulumi.StringArray{
/// pulumi.String("https://exempt.example.com"),
/// },
/// InlineRedactionPatterns: workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArray{
/// &workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs{
/// BuiltInPatternId: pulumi.String("ssn"),
/// ConfidenceLevel:  pulumi.Int(3),
/// EnforcedUrls: pulumi.StringArray{
/// pulumi.String("https://pattern1.example.com"),
/// },
/// ExemptUrls: pulumi.StringArray{
/// pulumi.String("https://exempt-pattern1.example.com"),
/// },
/// RedactionPlaceHolders: workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArray{
/// &workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs{
/// RedactionPlaceHolderType: pulumi.String("CustomText"),
/// RedactionPlaceHolderText: pulumi.String("REDACTED-SSN"),
/// },
/// },
/// },
/// &workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs{
/// CustomPattern: &workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPatternArgs{
/// PatternName:        pulumi.String("CustomPattern"),
/// PatternRegex:       pulumi.String("/\\d{3}-\\d{2}-\\d{4}/g"),
/// KeywordRegex:       pulumi.String("/SSN|Social Security/gi"),
/// PatternDescription: pulumi.String("Custom SSN pattern"),
/// },
/// RedactionPlaceHolders: workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArray{
/// &workspacesweb.DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs{
/// RedactionPlaceHolderType: pulumi.String("CustomText"),
/// RedactionPlaceHolderText: pulumi.String("REDACTED-CUSTOM"),
/// },
/// },
/// },
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example-data-protection-settings"),
/// },
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.workspacesweb.DataProtectionSettings;
/// import com.pulumi.aws.workspacesweb.DataProtectionSettingsArgs;
/// import com.pulumi.aws.workspacesweb.inputs.DataProtectionSettingsInlineRedactionConfigurationArgs;
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
/// var example = new Key("example", KeyArgs.builder()
/// .description("KMS key for WorkSpaces Web Data Protection Settings")
/// .deletionWindowInDays(7)
/// .build());
///
/// var exampleDataProtectionSettings = new DataProtectionSettings("exampleDataProtectionSettings", DataProtectionSettingsArgs.builder()
/// .displayName("example-complete")
/// .description("Complete example data protection settings")
/// .customerManagedKey(example.arn())
/// .additionalEncryptionContext(Map.of("Environment", "Production"))
/// .inlineRedactionConfiguration(DataProtectionSettingsInlineRedactionConfigurationArgs.builder()
/// .globalConfidenceLevel(2)
/// .globalEnforcedUrls(
/// "https://example.com",
/// "https://test.example.com")
/// .globalExemptUrls("https://exempt.example.com")
/// .inlineRedactionPatterns(
/// DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs.builder()
/// .builtInPatternId("ssn")
/// .confidenceLevel(3)
/// .enforcedUrls("https://pattern1.example.com")
/// .exemptUrls("https://exempt-pattern1.example.com")
/// .redactionPlaceHolders(DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs.builder()
/// .redactionPlaceHolderType("CustomText")
/// .redactionPlaceHolderText("REDACTED-SSN")
/// .build())
/// .build(),
/// DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternArgs.builder()
/// .customPattern(DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPatternArgs.builder()
/// .patternName("CustomPattern")
/// .patternRegex("/\\d{3}-\\d{2}-\\d{4}/g")
/// .keywordRegex("/SSN|Social Security/gi")
/// .patternDescription("Custom SSN pattern")
/// .build())
/// .redactionPlaceHolders(DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolderArgs.builder()
/// .redactionPlaceHolderType("CustomText")
/// .redactionPlaceHolderText("REDACTED-CUSTOM")
/// .build())
/// .build())
/// .build())
/// .tags(Map.of("Name", "example-data-protection-settings"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:kms:Key
/// properties:
/// description: KMS key for WorkSpaces Web Data Protection Settings
/// deletionWindowInDays: 7
/// exampleDataProtectionSettings:
/// type: aws:workspacesweb:DataProtectionSettings
/// name: example
/// properties:
/// displayName: example-complete
/// description: Complete example data protection settings
/// customerManagedKey: ${example.arn}
/// additionalEncryptionContext:
/// Environment: Production
/// inlineRedactionConfiguration:
/// globalConfidenceLevel: 2
/// globalEnforcedUrls:
/// - https://example.com
/// - https://test.example.com
/// globalExemptUrls:
/// - https://exempt.example.com
/// inlineRedactionPatterns:
/// - builtInPatternId: ssn
/// confidenceLevel: 3
/// enforcedUrls:
/// - https://pattern1.example.com
/// exemptUrls:
/// - https://exempt-pattern1.example.com
/// redactionPlaceHolders:
/// - redactionPlaceHolderType: CustomText
/// redactionPlaceHolderText: REDACTED-SSN
/// - customPattern:
/// patternName: CustomPattern
/// patternRegex: /\d{3}-\d{2}-\d{4}/g
/// keywordRegex: /SSN|Social Security/gi
/// patternDescription: Custom SSN pattern
/// redactionPlaceHolders:
/// - redactionPlaceHolderType: CustomText
/// redactionPlaceHolderText: REDACTED-CUSTOM
/// tags:
/// Name: example-data-protection-settings
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Data Protection Settings using the <span pulumi-lang-nodejs="`dataProtectionSettingsArn`" pulumi-lang-dotnet="`DataProtectionSettingsArn`" pulumi-lang-go="`dataProtectionSettingsArn`" pulumi-lang-python="`data_protection_settings_arn`" pulumi-lang-yaml="`dataProtectionSettingsArn`" pulumi-lang-java="`dataProtectionSettingsArn`">`data_protection_settings_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/dataProtectionSettings:DataProtectionSettings example arn:aws:workspaces-web:us-west-2:123456789012:dataprotectionsettings/abcdef12345
/// ```
class DataProtectionSettings extends CustomResource {
  /// Additional encryption context for the data protection settings.
  late final Output<Map<String, String>?> additionalEncryptionContext;

  /// List of web portal ARNs that this data protection settings resource is associated with.
  late final Output<List<String>> associatedPortalArns;

  /// ARN of the customer managed KMS key.
  late final Output<String?> customerManagedKey;

  /// ARN of the data protection settings resource.
  late final Output<String> dataProtectionSettingsArn;

  /// The description of the data protection settings.
  late final Output<String?> description;

  /// The display name of the data protection settings.
  ///
  /// The following arguments are optional:
  late final Output<String> displayName;

  /// The inline redaction configuration of the data protection settings. Detailed below.
  late final Output<DataProtectionSettingsInlineRedactionConfiguration?>
      inlineRedactionConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  DataProtectionSettings(
    String name, {
    DataProtectionSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/dataProtectionSettings:DataProtectionSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.additionalEncryptionContext =
        registerOutput<Map<String, String>?>('additionalEncryptionContext');
    this.associatedPortalArns =
        registerOutput<List<String>>('associatedPortalArns');
    this.customerManagedKey = registerOutput<String?>('customerManagedKey');
    this.dataProtectionSettingsArn =
        registerOutput<String>('dataProtectionSettingsArn');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.inlineRedactionConfiguration =
        registerOutput<DataProtectionSettingsInlineRedactionConfiguration?>(
            'inlineRedactionConfiguration');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
