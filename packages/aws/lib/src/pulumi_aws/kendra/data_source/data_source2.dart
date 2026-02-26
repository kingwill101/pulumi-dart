import 'package:pulumi/pulumi.dart';
import '../data_source_configuration/data_source_configuration.dart';
import '../data_source_custom_document_enrichment_configuration/data_source_custom_document_enrichment_configuration.dart';
import 'data_source_args2.dart';

/// Resource for managing an AWS Kendra Data Source.
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
/// const example = new aws.kendra.DataSource("example", {
/// indexId: exampleAwsKendraIndex.id,
/// name: "example",
/// description: "example",
/// languageCode: "en",
/// type: "CUSTOM",
/// tags: {
/// hello: "world",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
/// index_id=example_aws_kendra_index["id"],
/// name="example",
/// description="example",
/// language_code="en",
/// type="CUSTOM",
/// tags={
/// "hello": "world",
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
/// var example = new Aws.Kendra.DataSource("example", new()
/// {
/// IndexId = exampleAwsKendraIndex.Id,
/// Name = "example",
/// Description = "example",
/// LanguageCode = "en",
/// Type = "CUSTOM",
/// Tags =
/// {
/// { "hello", "world" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// IndexId:      pulumi.Any(exampleAwsKendraIndex.Id),
/// Name:         pulumi.String("example"),
/// Description:  pulumi.String("example"),
/// LanguageCode: pulumi.String("en"),
/// Type:         pulumi.String("CUSTOM"),
/// Tags: pulumi.StringMap{
/// "hello": pulumi.String("world"),
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
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
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
/// var example = new DataSource("example", DataSourceArgs.builder()
/// .indexId(exampleAwsKendraIndex.id())
/// .name("example")
/// .description("example")
/// .languageCode("en")
/// .type("CUSTOM")
/// .tags(Map.of("hello", "world"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:kendra:DataSource
/// properties:
/// indexId: ${exampleAwsKendraIndex.id}
/// name: example
/// description: example
/// languageCode: en
/// type: CUSTOM
/// tags:
/// hello: world
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### S3 Connector
///
/// ### With Schedule
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
/// indexId: exampleAwsKendraIndex.id,
/// name: "example",
/// type: "S3",
/// roleArn: exampleAwsIamRole.arn,
/// schedule: "cron(9 10 1 * ? *)",
/// configuration: {
/// s3Configuration: {
/// bucketName: exampleAwsS3Bucket.id,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
/// index_id=example_aws_kendra_index["id"],
/// name="example",
/// type="S3",
/// role_arn=example_aws_iam_role["arn"],
/// schedule="cron(9 10 1 * ? *)",
/// configuration={
/// "s3_configuration": {
/// "bucket_name": example_aws_s3_bucket["id"],
/// },
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
/// var example = new Aws.Kendra.DataSource("example", new()
/// {
/// IndexId = exampleAwsKendraIndex.Id,
/// Name = "example",
/// Type = "S3",
/// RoleArn = exampleAwsIamRole.Arn,
/// Schedule = "cron(9 10 1 * ? *)",
/// Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
/// {
/// S3Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationS3ConfigurationArgs
/// {
/// BucketName = exampleAwsS3Bucket.Id,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// IndexId:  pulumi.Any(exampleAwsKendraIndex.Id),
/// Name:     pulumi.String("example"),
/// Type:     pulumi.String("S3"),
/// RoleArn:  pulumi.Any(exampleAwsIamRole.Arn),
/// Schedule: pulumi.String("cron(9 10 1 * ? *)"),
/// Configuration: &kendra.DataSourceConfigurationArgs{
/// S3Configuration: &kendra.DataSourceConfigurationS3ConfigurationArgs{
/// BucketName: pulumi.Any(exampleAwsS3Bucket.Id),
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
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationS3ConfigurationArgs;
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
/// var example = new DataSource("example", DataSourceArgs.builder()
/// .indexId(exampleAwsKendraIndex.id())
/// .name("example")
/// .type("S3")
/// .roleArn(exampleAwsIamRole.arn())
/// .schedule("cron(9 10 1 * ? *)")
/// .configuration(DataSourceConfigurationArgs.builder()
/// .s3Configuration(DataSourceConfigurationS3ConfigurationArgs.builder()
/// .bucketName(exampleAwsS3Bucket.id())
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
/// type: aws:kendra:DataSource
/// properties:
/// indexId: ${exampleAwsKendraIndex.id}
/// name: example
/// type: S3
/// roleArn: ${exampleAwsIamRole.arn}
/// schedule: cron(9 10 1 * ? *)
/// configuration:
/// s3Configuration:
/// bucketName: ${exampleAwsS3Bucket.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Access Control List
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
/// indexId: exampleAwsKendraIndex.id,
/// name: "example",
/// type: "S3",
/// roleArn: exampleAwsIamRole.arn,
/// configuration: {
/// s3Configuration: {
/// bucketName: exampleAwsS3Bucket.id,
/// accessControlListConfiguration: {
/// keyPath: `s3://${exampleAwsS3Bucket.id}/path-1`,
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
/// index_id=example_aws_kendra_index["id"],
/// name="example",
/// type="S3",
/// role_arn=example_aws_iam_role["arn"],
/// configuration={
/// "s3_configuration": {
/// "bucket_name": example_aws_s3_bucket["id"],
/// "access_control_list_configuration": {
/// "key_path": f"s3://{example_aws_s3_bucket['id']}/path-1",
/// },
/// },
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
/// var example = new Aws.Kendra.DataSource("example", new()
/// {
/// IndexId = exampleAwsKendraIndex.Id,
/// Name = "example",
/// Type = "S3",
/// RoleArn = exampleAwsIamRole.Arn,
/// Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
/// {
/// S3Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationS3ConfigurationArgs
/// {
/// BucketName = exampleAwsS3Bucket.Id,
/// AccessControlListConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationS3ConfigurationAccessControlListConfigurationArgs
/// {
/// KeyPath = $"s3://{exampleAwsS3Bucket.Id}/path-1",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// Name:    pulumi.String("example"),
/// Type:    pulumi.String("S3"),
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// Configuration: &kendra.DataSourceConfigurationArgs{
/// S3Configuration: &kendra.DataSourceConfigurationS3ConfigurationArgs{
/// BucketName: pulumi.Any(exampleAwsS3Bucket.Id),
/// AccessControlListConfiguration: &kendra.DataSourceConfigurationS3ConfigurationAccessControlListConfigurationArgs{
/// KeyPath: pulumi.Sprintf("s3://%v/path-1", exampleAwsS3Bucket.Id),
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
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationS3ConfigurationAccessControlListConfigurationArgs;
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
/// var example = new DataSource("example", DataSourceArgs.builder()
/// .indexId(exampleAwsKendraIndex.id())
/// .name("example")
/// .type("S3")
/// .roleArn(exampleAwsIamRole.arn())
/// .configuration(DataSourceConfigurationArgs.builder()
/// .s3Configuration(DataSourceConfigurationS3ConfigurationArgs.builder()
/// .bucketName(exampleAwsS3Bucket.id())
/// .accessControlListConfiguration(DataSourceConfigurationS3ConfigurationAccessControlListConfigurationArgs.builder()
/// .keyPath(String.format("s3://%s/path-1", exampleAwsS3Bucket.id()))
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
/// type: aws:kendra:DataSource
/// properties:
/// indexId: ${exampleAwsKendraIndex.id}
/// name: example
/// type: S3
/// roleArn: ${exampleAwsIamRole.arn}
/// configuration:
/// s3Configuration:
/// bucketName: ${exampleAwsS3Bucket.id}
/// accessControlListConfiguration:
/// keyPath: s3://${exampleAwsS3Bucket.id}/path-1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Documents Metadata Configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
/// indexId: exampleAwsKendraIndex.id,
/// name: "example",
/// type: "S3",
/// roleArn: exampleAwsIamRole.arn,
/// configuration: {
/// s3Configuration: {
/// bucketName: exampleAwsS3Bucket.id,
/// exclusionPatterns: ["example"],
/// inclusionPatterns: ["hello"],
/// inclusionPrefixes: ["world"],
/// documentsMetadataConfiguration: {
/// s3Prefix: "example",
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
/// index_id=example_aws_kendra_index["id"],
/// name="example",
/// type="S3",
/// role_arn=example_aws_iam_role["arn"],
/// configuration={
/// "s3_configuration": {
/// "bucket_name": example_aws_s3_bucket["id"],
/// "exclusion_patterns": ["example"],
/// "inclusion_patterns": ["hello"],
/// "inclusion_prefixes": ["world"],
/// "documents_metadata_configuration": {
/// "s3_prefix": "example",
/// },
/// },
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
/// var example = new Aws.Kendra.DataSource("example", new()
/// {
/// IndexId = exampleAwsKendraIndex.Id,
/// Name = "example",
/// Type = "S3",
/// RoleArn = exampleAwsIamRole.Arn,
/// Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
/// {
/// S3Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationS3ConfigurationArgs
/// {
/// BucketName = exampleAwsS3Bucket.Id,
/// ExclusionPatterns = new[]
/// {
/// "example",
/// },
/// InclusionPatterns = new[]
/// {
/// "hello",
/// },
/// InclusionPrefixes = new[]
/// {
/// "world",
/// },
/// DocumentsMetadataConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationS3ConfigurationDocumentsMetadataConfigurationArgs
/// {
/// S3Prefix = "example",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// Name:    pulumi.String("example"),
/// Type:    pulumi.String("S3"),
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// Configuration: &kendra.DataSourceConfigurationArgs{
/// S3Configuration: &kendra.DataSourceConfigurationS3ConfigurationArgs{
/// BucketName: pulumi.Any(exampleAwsS3Bucket.Id),
/// ExclusionPatterns: pulumi.StringArray{
/// pulumi.String("example"),
/// },
/// InclusionPatterns: pulumi.StringArray{
/// pulumi.String("hello"),
/// },
/// InclusionPrefixes: pulumi.StringArray{
/// pulumi.String("world"),
/// },
/// DocumentsMetadataConfiguration: &kendra.DataSourceConfigurationS3ConfigurationDocumentsMetadataConfigurationArgs{
/// S3Prefix: pulumi.String("example"),
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
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationS3ConfigurationDocumentsMetadataConfigurationArgs;
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
/// var example = new DataSource("example", DataSourceArgs.builder()
/// .indexId(exampleAwsKendraIndex.id())
/// .name("example")
/// .type("S3")
/// .roleArn(exampleAwsIamRole.arn())
/// .configuration(DataSourceConfigurationArgs.builder()
/// .s3Configuration(DataSourceConfigurationS3ConfigurationArgs.builder()
/// .bucketName(exampleAwsS3Bucket.id())
/// .exclusionPatterns("example")
/// .inclusionPatterns("hello")
/// .inclusionPrefixes("world")
/// .documentsMetadataConfiguration(DataSourceConfigurationS3ConfigurationDocumentsMetadataConfigurationArgs.builder()
/// .s3Prefix("example")
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
/// type: aws:kendra:DataSource
/// properties:
/// indexId: ${exampleAwsKendraIndex.id}
/// name: example
/// type: S3
/// roleArn: ${exampleAwsIamRole.arn}
/// configuration:
/// s3Configuration:
/// bucketName: ${exampleAwsS3Bucket.id}
/// exclusionPatterns:
/// - example
/// inclusionPatterns:
/// - hello
/// inclusionPrefixes:
/// - world
/// documentsMetadataConfiguration:
/// s3Prefix: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Web Crawler Connector
///
/// ### With Seed URLs
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
/// indexId: exampleAwsKendraIndex.id,
/// name: "example",
/// type: "WEBCRAWLER",
/// roleArn: exampleAwsIamRole.arn,
/// configuration: {
/// webCrawlerConfiguration: {
/// urls: {
/// seedUrlConfiguration: {
/// seedUrls: ["REPLACE_WITH_YOUR_URL"],
/// },
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
/// index_id=example_aws_kendra_index["id"],
/// name="example",
/// type="WEBCRAWLER",
/// role_arn=example_aws_iam_role["arn"],
/// configuration={
/// "web_crawler_configuration": {
/// "urls": {
/// "seed_url_configuration": {
/// "seed_urls": ["REPLACE_WITH_YOUR_URL"],
/// },
/// },
/// },
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
/// var example = new Aws.Kendra.DataSource("example", new()
/// {
/// IndexId = exampleAwsKendraIndex.Id,
/// Name = "example",
/// Type = "WEBCRAWLER",
/// RoleArn = exampleAwsIamRole.Arn,
/// Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
/// {
/// WebCrawlerConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationArgs
/// {
/// Urls = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs
/// {
/// SeedUrlConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs
/// {
/// SeedUrls = new[]
/// {
/// "REPLACE_WITH_YOUR_URL",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// Name:    pulumi.String("example"),
/// Type:    pulumi.String("WEBCRAWLER"),
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// Configuration: &kendra.DataSourceConfigurationArgs{
/// WebCrawlerConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationArgs{
/// Urls: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs{
/// SeedUrlConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs{
/// SeedUrls: pulumi.StringArray{
/// pulumi.String("REPLACE_WITH_YOUR_URL"),
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
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs;
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
/// var example = new DataSource("example", DataSourceArgs.builder()
/// .indexId(exampleAwsKendraIndex.id())
/// .name("example")
/// .type("WEBCRAWLER")
/// .roleArn(exampleAwsIamRole.arn())
/// .configuration(DataSourceConfigurationArgs.builder()
/// .webCrawlerConfiguration(DataSourceConfigurationWebCrawlerConfigurationArgs.builder()
/// .urls(DataSourceConfigurationWebCrawlerConfigurationUrlsArgs.builder()
/// .seedUrlConfiguration(DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs.builder()
/// .seedUrls("REPLACE_WITH_YOUR_URL")
/// .build())
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
/// type: aws:kendra:DataSource
/// properties:
/// indexId: ${exampleAwsKendraIndex.id}
/// name: example
/// type: WEBCRAWLER
/// roleArn: ${exampleAwsIamRole.arn}
/// configuration:
/// webCrawlerConfiguration:
/// urls:
/// seedUrlConfiguration:
/// seedUrls:
/// - REPLACE_WITH_YOUR_URL
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Site Maps
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
/// indexId: exampleAwsKendraIndex.id,
/// name: "example",
/// type: "WEBCRAWLER",
/// roleArn: exampleAwsIamRole.arn,
/// configuration: {
/// webCrawlerConfiguration: {
/// urls: {
/// siteMapsConfiguration: {
/// siteMaps: ["REPLACE_WITH_YOUR_URL"],
/// },
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
/// index_id=example_aws_kendra_index["id"],
/// name="example",
/// type="WEBCRAWLER",
/// role_arn=example_aws_iam_role["arn"],
/// configuration={
/// "web_crawler_configuration": {
/// "urls": {
/// "site_maps_configuration": {
/// "site_maps": ["REPLACE_WITH_YOUR_URL"],
/// },
/// },
/// },
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
/// var example = new Aws.Kendra.DataSource("example", new()
/// {
/// IndexId = exampleAwsKendraIndex.Id,
/// Name = "example",
/// Type = "WEBCRAWLER",
/// RoleArn = exampleAwsIamRole.Arn,
/// Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
/// {
/// WebCrawlerConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationArgs
/// {
/// Urls = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs
/// {
/// SiteMapsConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfigurationArgs
/// {
/// SiteMaps = new[]
/// {
/// "REPLACE_WITH_YOUR_URL",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// Name:    pulumi.String("example"),
/// Type:    pulumi.String("WEBCRAWLER"),
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// Configuration: &kendra.DataSourceConfigurationArgs{
/// WebCrawlerConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationArgs{
/// Urls: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs{
/// SiteMapsConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfigurationArgs{
/// SiteMaps: pulumi.StringArray{
/// pulumi.String("REPLACE_WITH_YOUR_URL"),
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
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfigurationArgs;
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
/// var example = new DataSource("example", DataSourceArgs.builder()
/// .indexId(exampleAwsKendraIndex.id())
/// .name("example")
/// .type("WEBCRAWLER")
/// .roleArn(exampleAwsIamRole.arn())
/// .configuration(DataSourceConfigurationArgs.builder()
/// .webCrawlerConfiguration(DataSourceConfigurationWebCrawlerConfigurationArgs.builder()
/// .urls(DataSourceConfigurationWebCrawlerConfigurationUrlsArgs.builder()
/// .siteMapsConfiguration(DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfigurationArgs.builder()
/// .siteMaps("REPLACE_WITH_YOUR_URL")
/// .build())
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
/// type: aws:kendra:DataSource
/// properties:
/// indexId: ${exampleAwsKendraIndex.id}
/// name: example
/// type: WEBCRAWLER
/// roleArn: ${exampleAwsIamRole.arn}
/// configuration:
/// webCrawlerConfiguration:
/// urls:
/// siteMapsConfiguration:
/// siteMaps:
/// - REPLACE_WITH_YOUR_URL
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Web Crawler Mode
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
/// indexId: exampleAwsKendraIndex.id,
/// name: "example",
/// type: "WEBCRAWLER",
/// roleArn: exampleAwsIamRole.arn,
/// configuration: {
/// webCrawlerConfiguration: {
/// urls: {
/// seedUrlConfiguration: {
/// webCrawlerMode: "SUBDOMAINS",
/// seedUrls: ["REPLACE_WITH_YOUR_URL"],
/// },
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
/// index_id=example_aws_kendra_index["id"],
/// name="example",
/// type="WEBCRAWLER",
/// role_arn=example_aws_iam_role["arn"],
/// configuration={
/// "web_crawler_configuration": {
/// "urls": {
/// "seed_url_configuration": {
/// "web_crawler_mode": "SUBDOMAINS",
/// "seed_urls": ["REPLACE_WITH_YOUR_URL"],
/// },
/// },
/// },
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
/// var example = new Aws.Kendra.DataSource("example", new()
/// {
/// IndexId = exampleAwsKendraIndex.Id,
/// Name = "example",
/// Type = "WEBCRAWLER",
/// RoleArn = exampleAwsIamRole.Arn,
/// Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
/// {
/// WebCrawlerConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationArgs
/// {
/// Urls = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs
/// {
/// SeedUrlConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs
/// {
/// WebCrawlerMode = "SUBDOMAINS",
/// SeedUrls = new[]
/// {
/// "REPLACE_WITH_YOUR_URL",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// Name:    pulumi.String("example"),
/// Type:    pulumi.String("WEBCRAWLER"),
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// Configuration: &kendra.DataSourceConfigurationArgs{
/// WebCrawlerConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationArgs{
/// Urls: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs{
/// SeedUrlConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs{
/// WebCrawlerMode: pulumi.String("SUBDOMAINS"),
/// SeedUrls: pulumi.StringArray{
/// pulumi.String("REPLACE_WITH_YOUR_URL"),
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
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs;
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
/// var example = new DataSource("example", DataSourceArgs.builder()
/// .indexId(exampleAwsKendraIndex.id())
/// .name("example")
/// .type("WEBCRAWLER")
/// .roleArn(exampleAwsIamRole.arn())
/// .configuration(DataSourceConfigurationArgs.builder()
/// .webCrawlerConfiguration(DataSourceConfigurationWebCrawlerConfigurationArgs.builder()
/// .urls(DataSourceConfigurationWebCrawlerConfigurationUrlsArgs.builder()
/// .seedUrlConfiguration(DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs.builder()
/// .webCrawlerMode("SUBDOMAINS")
/// .seedUrls("REPLACE_WITH_YOUR_URL")
/// .build())
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
/// type: aws:kendra:DataSource
/// properties:
/// indexId: ${exampleAwsKendraIndex.id}
/// name: example
/// type: WEBCRAWLER
/// roleArn: ${exampleAwsIamRole.arn}
/// configuration:
/// webCrawlerConfiguration:
/// urls:
/// seedUrlConfiguration:
/// webCrawlerMode: SUBDOMAINS
/// seedUrls:
/// - REPLACE_WITH_YOUR_URL
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Authentication Configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
/// indexId: exampleAwsKendraIndex.id,
/// name: "example",
/// type: "WEBCRAWLER",
/// roleArn: exampleAwsIamRole.arn,
/// configuration: {
/// webCrawlerConfiguration: {
/// authenticationConfiguration: {
/// basicAuthentications: [{
/// credentials: exampleAwsSecretsmanagerSecret.arn,
/// host: "a.example.com",
/// port: 443,
/// }],
/// },
/// urls: {
/// seedUrlConfiguration: {
/// seedUrls: ["REPLACE_WITH_YOUR_URL"],
/// },
/// },
/// },
/// },
/// }, {
/// dependsOn: [exampleAwsSecretsmanagerSecretVersion],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
/// index_id=example_aws_kendra_index["id"],
/// name="example",
/// type="WEBCRAWLER",
/// role_arn=example_aws_iam_role["arn"],
/// configuration={
/// "web_crawler_configuration": {
/// "authentication_configuration": {
/// "basic_authentications": [{
/// "credentials": example_aws_secretsmanager_secret["arn"],
/// "host": "a.example.com",
/// "port": 443,
/// }],
/// },
/// "urls": {
/// "seed_url_configuration": {
/// "seed_urls": ["REPLACE_WITH_YOUR_URL"],
/// },
/// },
/// },
/// },
/// opts = pulumi.ResourceOptions(depends_on=[example_aws_secretsmanager_secret_version]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Kendra.DataSource("example", new()
/// {
/// IndexId = exampleAwsKendraIndex.Id,
/// Name = "example",
/// Type = "WEBCRAWLER",
/// RoleArn = exampleAwsIamRole.Arn,
/// Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
/// {
/// WebCrawlerConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationArgs
/// {
/// AuthenticationConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationArgs
/// {
/// BasicAuthentications = new[]
/// {
/// new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthenticationArgs
/// {
/// Credentials = exampleAwsSecretsmanagerSecret.Arn,
/// Host = "a.example.com",
/// Port = 443,
/// },
/// },
/// },
/// Urls = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs
/// {
/// SeedUrlConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs
/// {
/// SeedUrls = new[]
/// {
/// "REPLACE_WITH_YOUR_URL",
/// },
/// },
/// },
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleAwsSecretsmanagerSecretVersion,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// Name:    pulumi.String("example"),
/// Type:    pulumi.String("WEBCRAWLER"),
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// Configuration: &kendra.DataSourceConfigurationArgs{
/// WebCrawlerConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationArgs{
/// AuthenticationConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationArgs{
/// BasicAuthentications: kendra.DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthenticationArray{
/// &kendra.DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthenticationArgs{
/// Credentials: pulumi.Any(exampleAwsSecretsmanagerSecret.Arn),
/// Host:        pulumi.String("a.example.com"),
/// Port:        pulumi.Int(443),
/// },
/// },
/// },
/// Urls: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs{
/// SeedUrlConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs{
/// SeedUrls: pulumi.StringArray{
/// pulumi.String("REPLACE_WITH_YOUR_URL"),
/// },
/// },
/// },
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleAwsSecretsmanagerSecretVersion,
/// }))
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
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var example = new DataSource("example", DataSourceArgs.builder()
/// .indexId(exampleAwsKendraIndex.id())
/// .name("example")
/// .type("WEBCRAWLER")
/// .roleArn(exampleAwsIamRole.arn())
/// .configuration(DataSourceConfigurationArgs.builder()
/// .webCrawlerConfiguration(DataSourceConfigurationWebCrawlerConfigurationArgs.builder()
/// .authenticationConfiguration(DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationArgs.builder()
/// .basicAuthentications(DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthenticationArgs.builder()
/// .credentials(exampleAwsSecretsmanagerSecret.arn())
/// .host("a.example.com")
/// .port(443)
/// .build())
/// .build())
/// .urls(DataSourceConfigurationWebCrawlerConfigurationUrlsArgs.builder()
/// .seedUrlConfiguration(DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs.builder()
/// .seedUrls("REPLACE_WITH_YOUR_URL")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleAwsSecretsmanagerSecretVersion)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:kendra:DataSource
/// properties:
/// indexId: ${exampleAwsKendraIndex.id}
/// name: example
/// type: WEBCRAWLER
/// roleArn: ${exampleAwsIamRole.arn}
/// configuration:
/// webCrawlerConfiguration:
/// authenticationConfiguration:
/// basicAuthentications:
/// - credentials: ${exampleAwsSecretsmanagerSecret.arn}
/// host: a.example.com
/// port: '443'
/// urls:
/// seedUrlConfiguration:
/// seedUrls:
/// - REPLACE_WITH_YOUR_URL
/// options:
/// dependsOn:
/// - ${exampleAwsSecretsmanagerSecretVersion}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Crawl Depth
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
/// indexId: exampleAwsKendraIndex.id,
/// name: "example",
/// type: "WEBCRAWLER",
/// roleArn: exampleAwsIamRole.arn,
/// configuration: {
/// webCrawlerConfiguration: {
/// crawlDepth: 3,
/// urls: {
/// seedUrlConfiguration: {
/// seedUrls: ["REPLACE_WITH_YOUR_URL"],
/// },
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
/// index_id=example_aws_kendra_index["id"],
/// name="example",
/// type="WEBCRAWLER",
/// role_arn=example_aws_iam_role["arn"],
/// configuration={
/// "web_crawler_configuration": {
/// "crawl_depth": 3,
/// "urls": {
/// "seed_url_configuration": {
/// "seed_urls": ["REPLACE_WITH_YOUR_URL"],
/// },
/// },
/// },
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
/// var example = new Aws.Kendra.DataSource("example", new()
/// {
/// IndexId = exampleAwsKendraIndex.Id,
/// Name = "example",
/// Type = "WEBCRAWLER",
/// RoleArn = exampleAwsIamRole.Arn,
/// Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
/// {
/// WebCrawlerConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationArgs
/// {
/// CrawlDepth = 3,
/// Urls = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs
/// {
/// SeedUrlConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs
/// {
/// SeedUrls = new[]
/// {
/// "REPLACE_WITH_YOUR_URL",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// Name:    pulumi.String("example"),
/// Type:    pulumi.String("WEBCRAWLER"),
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// Configuration: &kendra.DataSourceConfigurationArgs{
/// WebCrawlerConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationArgs{
/// CrawlDepth: pulumi.Int(3),
/// Urls: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs{
/// SeedUrlConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs{
/// SeedUrls: pulumi.StringArray{
/// pulumi.String("REPLACE_WITH_YOUR_URL"),
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
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs;
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
/// var example = new DataSource("example", DataSourceArgs.builder()
/// .indexId(exampleAwsKendraIndex.id())
/// .name("example")
/// .type("WEBCRAWLER")
/// .roleArn(exampleAwsIamRole.arn())
/// .configuration(DataSourceConfigurationArgs.builder()
/// .webCrawlerConfiguration(DataSourceConfigurationWebCrawlerConfigurationArgs.builder()
/// .crawlDepth(3)
/// .urls(DataSourceConfigurationWebCrawlerConfigurationUrlsArgs.builder()
/// .seedUrlConfiguration(DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs.builder()
/// .seedUrls("REPLACE_WITH_YOUR_URL")
/// .build())
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
/// type: aws:kendra:DataSource
/// properties:
/// indexId: ${exampleAwsKendraIndex.id}
/// name: example
/// type: WEBCRAWLER
/// roleArn: ${exampleAwsIamRole.arn}
/// configuration:
/// webCrawlerConfiguration:
/// crawlDepth: 3
/// urls:
/// seedUrlConfiguration:
/// seedUrls:
/// - REPLACE_WITH_YOUR_URL
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Max Links Per Page
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
/// indexId: exampleAwsKendraIndex.id,
/// name: "example",
/// type: "WEBCRAWLER",
/// roleArn: exampleAwsIamRole.arn,
/// configuration: {
/// webCrawlerConfiguration: {
/// maxLinksPerPage: 100,
/// urls: {
/// seedUrlConfiguration: {
/// seedUrls: ["REPLACE_WITH_YOUR_URL"],
/// },
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
/// index_id=example_aws_kendra_index["id"],
/// name="example",
/// type="WEBCRAWLER",
/// role_arn=example_aws_iam_role["arn"],
/// configuration={
/// "web_crawler_configuration": {
/// "max_links_per_page": 100,
/// "urls": {
/// "seed_url_configuration": {
/// "seed_urls": ["REPLACE_WITH_YOUR_URL"],
/// },
/// },
/// },
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
/// var example = new Aws.Kendra.DataSource("example", new()
/// {
/// IndexId = exampleAwsKendraIndex.Id,
/// Name = "example",
/// Type = "WEBCRAWLER",
/// RoleArn = exampleAwsIamRole.Arn,
/// Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
/// {
/// WebCrawlerConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationArgs
/// {
/// MaxLinksPerPage = 100,
/// Urls = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs
/// {
/// SeedUrlConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs
/// {
/// SeedUrls = new[]
/// {
/// "REPLACE_WITH_YOUR_URL",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// Name:    pulumi.String("example"),
/// Type:    pulumi.String("WEBCRAWLER"),
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// Configuration: &kendra.DataSourceConfigurationArgs{
/// WebCrawlerConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationArgs{
/// MaxLinksPerPage: pulumi.Int(100),
/// Urls: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs{
/// SeedUrlConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs{
/// SeedUrls: pulumi.StringArray{
/// pulumi.String("REPLACE_WITH_YOUR_URL"),
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
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs;
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
/// var example = new DataSource("example", DataSourceArgs.builder()
/// .indexId(exampleAwsKendraIndex.id())
/// .name("example")
/// .type("WEBCRAWLER")
/// .roleArn(exampleAwsIamRole.arn())
/// .configuration(DataSourceConfigurationArgs.builder()
/// .webCrawlerConfiguration(DataSourceConfigurationWebCrawlerConfigurationArgs.builder()
/// .maxLinksPerPage(100)
/// .urls(DataSourceConfigurationWebCrawlerConfigurationUrlsArgs.builder()
/// .seedUrlConfiguration(DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs.builder()
/// .seedUrls("REPLACE_WITH_YOUR_URL")
/// .build())
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
/// type: aws:kendra:DataSource
/// properties:
/// indexId: ${exampleAwsKendraIndex.id}
/// name: example
/// type: WEBCRAWLER
/// roleArn: ${exampleAwsIamRole.arn}
/// configuration:
/// webCrawlerConfiguration:
/// maxLinksPerPage: 100
/// urls:
/// seedUrlConfiguration:
/// seedUrls:
/// - REPLACE_WITH_YOUR_URL
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Max Urls Per Minute Crawl Rate
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
/// indexId: exampleAwsKendraIndex.id,
/// name: "example",
/// type: "WEBCRAWLER",
/// roleArn: exampleAwsIamRole.arn,
/// configuration: {
/// webCrawlerConfiguration: {
/// maxUrlsPerMinuteCrawlRate: 300,
/// urls: {
/// seedUrlConfiguration: {
/// seedUrls: ["REPLACE_WITH_YOUR_URL"],
/// },
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
/// index_id=example_aws_kendra_index["id"],
/// name="example",
/// type="WEBCRAWLER",
/// role_arn=example_aws_iam_role["arn"],
/// configuration={
/// "web_crawler_configuration": {
/// "max_urls_per_minute_crawl_rate": 300,
/// "urls": {
/// "seed_url_configuration": {
/// "seed_urls": ["REPLACE_WITH_YOUR_URL"],
/// },
/// },
/// },
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
/// var example = new Aws.Kendra.DataSource("example", new()
/// {
/// IndexId = exampleAwsKendraIndex.Id,
/// Name = "example",
/// Type = "WEBCRAWLER",
/// RoleArn = exampleAwsIamRole.Arn,
/// Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
/// {
/// WebCrawlerConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationArgs
/// {
/// MaxUrlsPerMinuteCrawlRate = 300,
/// Urls = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs
/// {
/// SeedUrlConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs
/// {
/// SeedUrls = new[]
/// {
/// "REPLACE_WITH_YOUR_URL",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// Name:    pulumi.String("example"),
/// Type:    pulumi.String("WEBCRAWLER"),
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// Configuration: &kendra.DataSourceConfigurationArgs{
/// WebCrawlerConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationArgs{
/// MaxUrlsPerMinuteCrawlRate: pulumi.Int(300),
/// Urls: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs{
/// SeedUrlConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs{
/// SeedUrls: pulumi.StringArray{
/// pulumi.String("REPLACE_WITH_YOUR_URL"),
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
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs;
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
/// var example = new DataSource("example", DataSourceArgs.builder()
/// .indexId(exampleAwsKendraIndex.id())
/// .name("example")
/// .type("WEBCRAWLER")
/// .roleArn(exampleAwsIamRole.arn())
/// .configuration(DataSourceConfigurationArgs.builder()
/// .webCrawlerConfiguration(DataSourceConfigurationWebCrawlerConfigurationArgs.builder()
/// .maxUrlsPerMinuteCrawlRate(300)
/// .urls(DataSourceConfigurationWebCrawlerConfigurationUrlsArgs.builder()
/// .seedUrlConfiguration(DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs.builder()
/// .seedUrls("REPLACE_WITH_YOUR_URL")
/// .build())
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
/// type: aws:kendra:DataSource
/// properties:
/// indexId: ${exampleAwsKendraIndex.id}
/// name: example
/// type: WEBCRAWLER
/// roleArn: ${exampleAwsIamRole.arn}
/// configuration:
/// webCrawlerConfiguration:
/// maxUrlsPerMinuteCrawlRate: 300
/// urls:
/// seedUrlConfiguration:
/// seedUrls:
/// - REPLACE_WITH_YOUR_URL
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Proxy Configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
/// indexId: exampleAwsKendraIndex.id,
/// name: "example",
/// type: "WEBCRAWLER",
/// roleArn: exampleAwsIamRole.arn,
/// configuration: {
/// webCrawlerConfiguration: {
/// proxyConfiguration: {
/// credentials: exampleAwsSecretsmanagerSecret.arn,
/// host: "a.example.com",
/// port: 443,
/// },
/// urls: {
/// seedUrlConfiguration: {
/// seedUrls: ["REPLACE_WITH_YOUR_URL"],
/// },
/// },
/// },
/// },
/// }, {
/// dependsOn: [exampleAwsSecretsmanagerSecretVersion],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
/// index_id=example_aws_kendra_index["id"],
/// name="example",
/// type="WEBCRAWLER",
/// role_arn=example_aws_iam_role["arn"],
/// configuration={
/// "web_crawler_configuration": {
/// "proxy_configuration": {
/// "credentials": example_aws_secretsmanager_secret["arn"],
/// "host": "a.example.com",
/// "port": 443,
/// },
/// "urls": {
/// "seed_url_configuration": {
/// "seed_urls": ["REPLACE_WITH_YOUR_URL"],
/// },
/// },
/// },
/// },
/// opts = pulumi.ResourceOptions(depends_on=[example_aws_secretsmanager_secret_version]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Kendra.DataSource("example", new()
/// {
/// IndexId = exampleAwsKendraIndex.Id,
/// Name = "example",
/// Type = "WEBCRAWLER",
/// RoleArn = exampleAwsIamRole.Arn,
/// Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
/// {
/// WebCrawlerConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationArgs
/// {
/// ProxyConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationProxyConfigurationArgs
/// {
/// Credentials = exampleAwsSecretsmanagerSecret.Arn,
/// Host = "a.example.com",
/// Port = 443,
/// },
/// Urls = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs
/// {
/// SeedUrlConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs
/// {
/// SeedUrls = new[]
/// {
/// "REPLACE_WITH_YOUR_URL",
/// },
/// },
/// },
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleAwsSecretsmanagerSecretVersion,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// Name:    pulumi.String("example"),
/// Type:    pulumi.String("WEBCRAWLER"),
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// Configuration: &kendra.DataSourceConfigurationArgs{
/// WebCrawlerConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationArgs{
/// ProxyConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationProxyConfigurationArgs{
/// Credentials: pulumi.Any(exampleAwsSecretsmanagerSecret.Arn),
/// Host:        pulumi.String("a.example.com"),
/// Port:        pulumi.Int(443),
/// },
/// Urls: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs{
/// SeedUrlConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs{
/// SeedUrls: pulumi.StringArray{
/// pulumi.String("REPLACE_WITH_YOUR_URL"),
/// },
/// },
/// },
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleAwsSecretsmanagerSecretVersion,
/// }))
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
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationProxyConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var example = new DataSource("example", DataSourceArgs.builder()
/// .indexId(exampleAwsKendraIndex.id())
/// .name("example")
/// .type("WEBCRAWLER")
/// .roleArn(exampleAwsIamRole.arn())
/// .configuration(DataSourceConfigurationArgs.builder()
/// .webCrawlerConfiguration(DataSourceConfigurationWebCrawlerConfigurationArgs.builder()
/// .proxyConfiguration(DataSourceConfigurationWebCrawlerConfigurationProxyConfigurationArgs.builder()
/// .credentials(exampleAwsSecretsmanagerSecret.arn())
/// .host("a.example.com")
/// .port(443)
/// .build())
/// .urls(DataSourceConfigurationWebCrawlerConfigurationUrlsArgs.builder()
/// .seedUrlConfiguration(DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs.builder()
/// .seedUrls("REPLACE_WITH_YOUR_URL")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleAwsSecretsmanagerSecretVersion)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:kendra:DataSource
/// properties:
/// indexId: ${exampleAwsKendraIndex.id}
/// name: example
/// type: WEBCRAWLER
/// roleArn: ${exampleAwsIamRole.arn}
/// configuration:
/// webCrawlerConfiguration:
/// proxyConfiguration:
/// credentials: ${exampleAwsSecretsmanagerSecret.arn}
/// host: a.example.com
/// port: '443'
/// urls:
/// seedUrlConfiguration:
/// seedUrls:
/// - REPLACE_WITH_YOUR_URL
/// options:
/// dependsOn:
/// - ${exampleAwsSecretsmanagerSecretVersion}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With URL Exclusion and Inclusion Patterns
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
/// indexId: exampleAwsKendraIndex.id,
/// name: "example",
/// type: "WEBCRAWLER",
/// roleArn: exampleAwsIamRole.arn,
/// configuration: {
/// webCrawlerConfiguration: {
/// urlExclusionPatterns: ["example"],
/// urlInclusionPatterns: ["hello"],
/// urls: {
/// seedUrlConfiguration: {
/// seedUrls: ["REPLACE_WITH_YOUR_URL"],
/// },
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
/// index_id=example_aws_kendra_index["id"],
/// name="example",
/// type="WEBCRAWLER",
/// role_arn=example_aws_iam_role["arn"],
/// configuration={
/// "web_crawler_configuration": {
/// "url_exclusion_patterns": ["example"],
/// "url_inclusion_patterns": ["hello"],
/// "urls": {
/// "seed_url_configuration": {
/// "seed_urls": ["REPLACE_WITH_YOUR_URL"],
/// },
/// },
/// },
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
/// var example = new Aws.Kendra.DataSource("example", new()
/// {
/// IndexId = exampleAwsKendraIndex.Id,
/// Name = "example",
/// Type = "WEBCRAWLER",
/// RoleArn = exampleAwsIamRole.Arn,
/// Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
/// {
/// WebCrawlerConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationArgs
/// {
/// UrlExclusionPatterns = new[]
/// {
/// "example",
/// },
/// UrlInclusionPatterns = new[]
/// {
/// "hello",
/// },
/// Urls = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs
/// {
/// SeedUrlConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs
/// {
/// SeedUrls = new[]
/// {
/// "REPLACE_WITH_YOUR_URL",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// Name:    pulumi.String("example"),
/// Type:    pulumi.String("WEBCRAWLER"),
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// Configuration: &kendra.DataSourceConfigurationArgs{
/// WebCrawlerConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationArgs{
/// UrlExclusionPatterns: pulumi.StringArray{
/// pulumi.String("example"),
/// },
/// UrlInclusionPatterns: pulumi.StringArray{
/// pulumi.String("hello"),
/// },
/// Urls: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs{
/// SeedUrlConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs{
/// SeedUrls: pulumi.StringArray{
/// pulumi.String("REPLACE_WITH_YOUR_URL"),
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
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs;
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
/// var example = new DataSource("example", DataSourceArgs.builder()
/// .indexId(exampleAwsKendraIndex.id())
/// .name("example")
/// .type("WEBCRAWLER")
/// .roleArn(exampleAwsIamRole.arn())
/// .configuration(DataSourceConfigurationArgs.builder()
/// .webCrawlerConfiguration(DataSourceConfigurationWebCrawlerConfigurationArgs.builder()
/// .urlExclusionPatterns("example")
/// .urlInclusionPatterns("hello")
/// .urls(DataSourceConfigurationWebCrawlerConfigurationUrlsArgs.builder()
/// .seedUrlConfiguration(DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs.builder()
/// .seedUrls("REPLACE_WITH_YOUR_URL")
/// .build())
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
/// type: aws:kendra:DataSource
/// properties:
/// indexId: ${exampleAwsKendraIndex.id}
/// name: example
/// type: WEBCRAWLER
/// roleArn: ${exampleAwsIamRole.arn}
/// configuration:
/// webCrawlerConfiguration:
/// urlExclusionPatterns:
/// - example
/// urlInclusionPatterns:
/// - hello
/// urls:
/// seedUrlConfiguration:
/// seedUrls:
/// - REPLACE_WITH_YOUR_URL
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With `WEBCRAWLERV2` Template
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
/// indexId: exampleAwsKendraIndex.id,
/// name: "example",
/// type: "TEMPLATE",
/// roleArn: exampleAwsIamRole.arn,
/// configuration: {
/// templateConfiguration: {
/// template: JSON.stringify({
/// connectionConfiguration: {
/// repositoryEndpointMetadata: {
/// seedUrlConnections: [{
/// seedUrl: "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kendra_index",
/// }],
/// },
/// },
/// additionalProperties: {
/// inclusionURLIndexPatterns: ["https:\\/\\/registry[.]terraform[.]io\\/providers\\/hashicorp\\/aws\\/latest\\/docs\\/resources\\/kendra_index"],
/// },
/// version: "1.0.0",
/// syncMode: "FULL_CRAWL",
/// type: "WEBCRAWLERV2",
/// }),
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
/// index_id=example_aws_kendra_index["id"],
/// name="example",
/// type="TEMPLATE",
/// role_arn=example_aws_iam_role["arn"],
/// configuration={
/// "template_configuration": {
/// "template": json.dumps({
/// "connectionConfiguration": {
/// "repositoryEndpointMetadata": {
/// "seedUrlConnections": [{
/// "seedUrl": "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kendra_index",
/// }],
/// },
/// },
/// "additionalProperties": {
/// "inclusionURLIndexPatterns": ["https:\\/\\/registry[.]terraform[.]io\\/providers\\/hashicorp\\/aws\\/latest\\/docs\\/resources\\/kendra_index"],
/// },
/// "version": "1.0.0",
/// "syncMode": "FULL_CRAWL",
/// "type": "WEBCRAWLERV2",
/// }),
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Kendra.DataSource("example", new()
/// {
/// IndexId = exampleAwsKendraIndex.Id,
/// Name = "example",
/// Type = "TEMPLATE",
/// RoleArn = exampleAwsIamRole.Arn,
/// Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
/// {
/// TemplateConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationTemplateConfigurationArgs
/// {
/// Template = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["connectionConfiguration"] = new Dictionary<string, object?>
/// {
/// ["repositoryEndpointMetadata"] = new Dictionary<string, object?>
/// {
/// ["seedUrlConnections"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["seedUrl"] = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kendra_index",
/// },
/// },
/// },
/// },
/// ["additionalProperties"] = new Dictionary<string, object?>
/// {
/// ["inclusionURLIndexPatterns"] = new[]
/// {
/// "https:\\/\\/registry[.]terraform[.]io\\/providers\\/hashicorp\\/aws\\/latest\\/docs\\/resources\\/kendra_index",
/// },
/// },
/// ["version"] = "1.0.0",
/// ["syncMode"] = "FULL_CRAWL",
/// ["type"] = "WEBCRAWLERV2",
/// }),
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
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "connectionConfiguration": map[string]interface{}{
/// "repositoryEndpointMetadata": map[string]interface{}{
/// "seedUrlConnections": []map[string]interface{}{
/// map[string]interface{}{
/// "seedUrl": "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kendra_index",
/// },
/// },
/// },
/// },
/// "additionalProperties": map[string]interface{}{
/// "inclusionURLIndexPatterns": []string{
/// "https:\\/\\/registry[.]terraform[.]io\\/providers\\/hashicorp\\/aws\\/latest\\/docs\\/resources\\/kendra_index",
/// },
/// },
/// "version":  "1.0.0",
/// "syncMode": "FULL_CRAWL",
/// "type":     "WEBCRAWLERV2",
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// Name:    pulumi.String("example"),
/// Type:    pulumi.String("TEMPLATE"),
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// Configuration: &kendra.DataSourceConfigurationArgs{
/// TemplateConfiguration: &kendra.DataSourceConfigurationTemplateConfigurationArgs{
/// Template: pulumi.String(json0),
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
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationTemplateConfigurationArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// var example = new DataSource("example", DataSourceArgs.builder()
/// .indexId(exampleAwsKendraIndex.id())
/// .name("example")
/// .type("TEMPLATE")
/// .roleArn(exampleAwsIamRole.arn())
/// .configuration(DataSourceConfigurationArgs.builder()
/// .templateConfiguration(DataSourceConfigurationTemplateConfigurationArgs.builder()
/// .template(serializeJson(
/// jsonObject(
/// jsonProperty("connectionConfiguration", jsonObject(
/// jsonProperty("repositoryEndpointMetadata", jsonObject(
/// jsonProperty("seedUrlConnections", jsonArray(jsonObject(
/// jsonProperty("seedUrl", "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kendra_index")
/// )))
/// ))
/// )),
/// jsonProperty("additionalProperties", jsonObject(
/// jsonProperty("inclusionURLIndexPatterns", jsonArray("https:\\/\\/registry[.]terraform[.]io\\/providers\\/hashicorp\\/aws\\/latest\\/docs\\/resources\\/kendra_index"))
/// )),
/// jsonProperty("version", "1.0.0"),
/// jsonProperty("syncMode", "FULL_CRAWL"),
/// jsonProperty("type", "WEBCRAWLERV2")
/// )))
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
/// type: aws:kendra:DataSource
/// properties:
/// indexId: ${exampleAwsKendraIndex.id}
/// name: example
/// type: TEMPLATE
/// roleArn: ${exampleAwsIamRole.arn}
/// configuration:
/// templateConfiguration:
/// template:
/// fn::toJSON:
/// connectionConfiguration:
/// repositoryEndpointMetadata:
/// seedUrlConnections:
/// - seedUrl: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kendra_index
/// additionalProperties:
/// inclusionURLIndexPatterns:
/// - https:\/\/registry[.]terraform[.]io\/providers\/hashicorp\/aws\/latest\/docs\/resources\/kendra_index
/// version: 1.0.0
/// syncMode: FULL_CRAWL
/// type: WEBCRAWLERV2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Kendra Data Source using the unique identifiers of the<span pulumi-lang-nodejs=" dataSource " pulumi-lang-dotnet=" DataSource " pulumi-lang-go=" dataSource " pulumi-lang-python=" data_source " pulumi-lang-yaml=" dataSource " pulumi-lang-java=" dataSource "> data_source </span>and index separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:kendra/dataSource:DataSource example 1045d08d-66ef-4882-b3ed-dfb7df183e90/b34dfdf7-1f2b-4704-9581-79e00296845f
/// ```
class DataSource2 extends CustomResource {
  /// ARN of the Data Source.
  late final Output<String> arn;

  /// A block with the configuration information to connect to your Data Source repository. You can't specify the <span pulumi-lang-nodejs="`configuration`" pulumi-lang-dotnet="`Configuration`" pulumi-lang-go="`configuration`" pulumi-lang-python="`configuration`" pulumi-lang-yaml="`configuration`" pulumi-lang-java="`configuration`">`configuration`</span> block when the <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> parameter is set to `CUSTOM`. Detailed below.
  late final Output<DataSourceConfiguration?> configuration;

  /// The Unix time stamp of when the Data Source was created.
  late final Output<String> createdAt;

  /// A block with the configuration information for altering document metadata and content during the document ingestion process. For more information on how to create, modify and delete document metadata, or make other content alterations when you ingest documents into Amazon Kendra, see [Customizing document metadata during the ingestion process](https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html). Detailed below.
  late final Output<DataSourceCustomDocumentEnrichmentConfiguration?>
      customDocumentEnrichmentConfiguration;

  /// The unique identifiers of the Data Source.
  late final Output<String> dataSourceId;

  /// A description for the Data Source connector.
  late final Output<String?> description;

  /// When the Status field value is `FAILED`, contains a description of the error that caused the Data Source to fail.
  late final Output<String> errorMessage;

  /// The identifier of the index for your Amazon Kendra data source.
  late final Output<String> indexId;

  /// The code for a language. This allows you to support a language for all documents when creating the Data Source connector. English is supported by default. For more information on supported languages, including their codes, see [Adding documents in languages other than English](https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html).
  late final Output<String> languageCode;

  /// A name for your data source connector.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of a role with permission to access the data source connector. For more information, see [IAM roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html). You can't specify the <span pulumi-lang-nodejs="`roleArn`" pulumi-lang-dotnet="`RoleArn`" pulumi-lang-go="`roleArn`" pulumi-lang-python="`role_arn`" pulumi-lang-yaml="`roleArn`" pulumi-lang-java="`roleArn`">`role_arn`</span> parameter when the <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> parameter is set to `CUSTOM`. The <span pulumi-lang-nodejs="`roleArn`" pulumi-lang-dotnet="`RoleArn`" pulumi-lang-go="`roleArn`" pulumi-lang-python="`role_arn`" pulumi-lang-yaml="`roleArn`" pulumi-lang-java="`roleArn`">`role_arn`</span> parameter is required for all other data sources.
  late final Output<String?> roleArn;

  /// Sets the frequency for Amazon Kendra to check the documents in your Data Source repository and update the index. If you don't set a schedule Amazon Kendra will not periodically update the index. You can call the `StartDataSourceSyncJob` API to update the index.
  late final Output<String?> schedule;

  /// The current status of the Data Source. When the status is `ACTIVE` the Data Source is ready to use. When the status is `FAILED`, the <span pulumi-lang-nodejs="`errorMessage`" pulumi-lang-dotnet="`ErrorMessage`" pulumi-lang-go="`errorMessage`" pulumi-lang-python="`error_message`" pulumi-lang-yaml="`errorMessage`" pulumi-lang-java="`errorMessage`">`error_message`</span> field contains the reason that the Data Source failed.
  late final Output<String> status;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The type of data source repository. For an updated list of values, refer to [Valid Values for Type](https://docs.aws.amazon.com/kendra/latest/dg/API_CreateDataSource.html#Kendra-CreateDataSource-request-Type).
  ///
  /// The following arguments are optional:
  late final Output<String> type;

  /// The Unix time stamp of when the Data Source was last updated.
  late final Output<String> updatedAt;

  DataSource2(
    String name, {
    DataSourceArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:kendra/dataSource:DataSource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.configuration = Output.createUnknown<DataSourceConfiguration?>();
    this.createdAt = Output.createUnknown<String>();
    this.customDocumentEnrichmentConfiguration = Output.createUnknown<
        DataSourceCustomDocumentEnrichmentConfiguration?>();
    this.dataSourceId = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.errorMessage = Output.createUnknown<String>();
    this.indexId = Output.createUnknown<String>();
    this.languageCode = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.roleArn = Output.createUnknown<String?>();
    this.schedule = Output.createUnknown<String?>();
    this.status = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.type = Output.createUnknown<String>();
    this.updatedAt = Output.createUnknown<String>();
  }
}
