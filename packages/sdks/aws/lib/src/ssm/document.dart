import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_args.dart';
import 'document_attachments_source.dart';
import 'document_parameter.dart';
import 'document_state.dart';

/// Provides an SSM Document resource
///
/// &gt; **NOTE on updating SSM documents:** Only documents with a schema version of 2.0
/// or greater can update their content once created, see [SSM Schema Features](http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-ssm-docs.html#document-schemas-features). To update a document with an older schema version you must recreate the resource. Not all document types support a schema version of 2.0 or greater. Refer to [SSM document schema features and examples](https://docs.aws.amazon.com/systems-manager/latest/userguide/document-schemas-features.html) for information about which schema versions are supported for the respective `documentType`.
///
/// ## Example Usage
///
/// ### Create an ssm document in JSON format
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.ssm.Document("foo", {
///     name: "test_document",
///     documentType: "Command",
///     content: `  {
///     \\"schemaVersion\\": \\"1.2\\",
///     \\"description\\": \\"Check ip configuration of a Linux instance.\\",
///     \\"parameters\\": {
///
///     },
///     \\"runtimeConfig\\": {
///       \\"aws:runShellScript\\": {
///         \\"properties\\": [
///           {
///             \\"id\\": \\"0.aws:runShellScript\\",
///             \\"runCommand\\": [\\"ifconfig\\"]
///           }
///         ]
///       }
///     }
///   }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ssm.Document("foo",
///     name="test_document",
///     document_type="Command",
///     content="""  {
///     \"schemaVersion\": \"1.2\",
///     \"description\": \"Check ip configuration of a Linux instance.\",
///     \"parameters\": {
///
///     },
///     \"runtimeConfig\": {
///       \"aws:runShellScript\": {
///         \"properties\": [
///           {
///             \"id\": \"0.aws:runShellScript\",
///             \"runCommand\": [\"ifconfig\"]
///           }
///         ]
///       }
///     }
///   }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Aws.Ssm.Document("foo", new()
///     {
///         Name = "test_document",
///         DocumentType = "Command",
///         Content = @"  {
///     \""schemaVersion\"": \""1.2\"",
///     \""description\"": \""Check ip configuration of a Linux instance.\"",
///     \""parameters\"": {
///
///     },
///     \""runtimeConfig\"": {
///       \""aws:runShellScript\"": {
///         \""properties\"": [
///           {
///             \""id\"": \""0.aws:runShellScript\"",
///             \""runCommand\"": [\""ifconfig\""]
///           }
///         ]
///       }
///     }
///   }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.NewDocument(ctx, "foo", &ssm.DocumentArgs{
/// 			Name:         pulumi.String("test_document"),
/// 			DocumentType: pulumi.String("Command"),
/// 			Content: pulumi.String(`  {
///     \"schemaVersion\": \"1.2\",
///     \"description\": \"Check ip configuration of a Linux instance.\",
///     \"parameters\": {
///
///     },
///     \"runtimeConfig\": {
///       \"aws:runShellScript\": {
///         \"properties\": [
///           {
///             \"id\": \"0.aws:runShellScript\",
///             \"runCommand\": [\"ifconfig\"]
///           }
///         ]
///       }
///     }
///   }
/// `),
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
/// resource "aws_ssm_document" "foo" {
///   name          = "test_document"
///   document_type = "Command"
///   content       = "  {\n    \\\"schemaVersion\\\": \\\"1.2\\\",\n    \\\"description\\\": \\\"Check ip configuration of a Linux instance.\\\",\n    \\\"parameters\\\": {\n\n    },\n    \\\"runtimeConfig\\\": {\n      \\\"aws:runShellScript\\\": {\n        \\\"properties\\\": [\n          {\n            \\\"id\\\": \\\"0.aws:runShellScript\\\",\n            \\\"runCommand\\\": [\\\"ifconfig\\\"]\n          }\n        ]\n      }\n    }\n  }\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.Document;
/// import com.pulumi.aws.ssm.DocumentArgs;
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
///         var foo = new Document("foo", DocumentArgs.builder()
///             .name("test_document")
///             .documentType("Command")
///             .content("""
///   {
///     \"schemaVersion\": \"1.2\",
///     \"description\": \"Check ip configuration of a Linux instance.\",
///     \"parameters\": {
///
///     },
///     \"runtimeConfig\": {
///       \"aws:runShellScript\": {
///         \"properties\": [
///           {
///             \"id\": \"0.aws:runShellScript\",
///             \"runCommand\": [\"ifconfig\"]
///           }
///         ]
///       }
///     }
///   }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:ssm:Document
///     properties:
///       name: test_document
///       documentType: Command
///       content: |2
///           {
///             \"schemaVersion\": \"1.2\",
///             \"description\": \"Check ip configuration of a Linux instance.\",
///             \"parameters\": {
///
///             },
///             \"runtimeConfig\": {
///               \"aws:runShellScript\": {
///                 \"properties\": [
///                   {
///                     \"id\": \"0.aws:runShellScript\",
///                     \"runCommand\": [\"ifconfig\"]
///                   }
///                 ]
///               }
///             }
///           }
/// ```
///
///
/// ### Create an ssm document in YAML format
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.ssm.Document("foo", {
///     name: "test_document",
///     documentFormat: "YAML",
///     documentType: "Command",
///     content: `schemaVersion: '1.2'
/// description: Check ip configuration of a Linux instance.
/// parameters: {}
/// runtimeConfig:
///   'aws:runShellScript':
///     properties:
///       - id: '0.aws:runShellScript'
///         runCommand:
///           - ifconfig
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ssm.Document("foo",
///     name="test_document",
///     document_format="YAML",
///     document_type="Command",
///     content="""schemaVersion: '1.2'
/// description: Check ip configuration of a Linux instance.
/// parameters: {}
/// runtimeConfig:
///   'aws:runShellScript':
///     properties:
///       - id: '0.aws:runShellScript'
///         runCommand:
///           - ifconfig
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Aws.Ssm.Document("foo", new()
///     {
///         Name = "test_document",
///         DocumentFormat = "YAML",
///         DocumentType = "Command",
///         Content = @"schemaVersion: '1.2'
/// description: Check ip configuration of a Linux instance.
/// parameters: {}
/// runtimeConfig:
///   'aws:runShellScript':
///     properties:
///       - id: '0.aws:runShellScript'
///         runCommand:
///           - ifconfig
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.NewDocument(ctx, "foo", &ssm.DocumentArgs{
/// 			Name:           pulumi.String("test_document"),
/// 			DocumentFormat: pulumi.String("YAML"),
/// 			DocumentType:   pulumi.String("Command"),
/// 			Content: pulumi.String(`schemaVersion: '1.2'
/// description: Check ip configuration of a Linux instance.
/// parameters: {}
/// runtimeConfig:
///   'aws:runShellScript':
///     properties:
///       - id: '0.aws:runShellScript'
///         runCommand:
///           - ifconfig
/// `),
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
/// resource "aws_ssm_document" "foo" {
///   name            = "test_document"
///   document_format = "YAML"
///   document_type   = "Command"
///   content         = "schemaVersion: '1.2'\ndescription: Check ip configuration of a Linux instance.\nparameters: {}\nruntimeConfig:\n  'aws:runShellScript':\n    properties:\n      - id: '0.aws:runShellScript'\n        runCommand:\n          - ifconfig\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.Document;
/// import com.pulumi.aws.ssm.DocumentArgs;
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
///         var foo = new Document("foo", DocumentArgs.builder()
///             .name("test_document")
///             .documentFormat("YAML")
///             .documentType("Command")
///             .content("""
/// schemaVersion: '1.2'
/// description: Check ip configuration of a Linux instance.
/// parameters: {}
/// runtimeConfig:
///   'aws:runShellScript':
///     properties:
///       - id: '0.aws:runShellScript'
///         runCommand:
///           - ifconfig
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:ssm:Document
///     properties:
///       name: test_document
///       documentFormat: YAML
///       documentType: Command
///       content: |
///         schemaVersion: '1.2'
///         description: Check ip configuration of a Linux instance.
///         parameters: {}
///         runtimeConfig:
///           'aws:runShellScript':
///             properties:
///               - id: '0.aws:runShellScript'
///                 runCommand:
///                   - ifconfig
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` - (String) Name of the SSM document.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSM Documents using the name. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/document:Document example example
/// ```
///
/// The `attachmentsSource` argument does not have an SSM API method for reading the attachment information detail after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use `ignoreChanges` to hide the difference. For example:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ssm.Document("test", {
///     attachmentsSources: [{
///         key: "SourceUrl",
///         values: [`s3://${objectBucket.bucket}/test.zip`],
///     }],
///     name: "test_document",
///     documentType: "Package",
/// }, {
///     ignoreChanges: ["attachmentsSources"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ssm.Document("test",
///     attachments_sources=[{
///         "key": "SourceUrl",
///         "values": [f"s3://{object_bucket['bucket']}/test.zip"],
///     }],
///     name="test_document",
///     document_type="Package",
///     opts = pulumi.ResourceOptions(ignore_changes=["attachmentsSources"]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Ssm.Document("test", new()
///     {
///         AttachmentsSources = new[]
///         {
///             new Aws.Ssm.Inputs.DocumentAttachmentsSourceArgs
///             {
///                 Key = "SourceUrl",
///                 Values = new[]
///                 {
///                     $"s3://{objectBucket.Bucket}/test.zip",
///                 },
///             },
///         },
///         Name = "test_document",
///         DocumentType = "Package",
///     }, new CustomResourceOptions
///     {
///         IgnoreChanges =
///         {
///             "attachmentsSources",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.NewDocument(ctx, "test", &ssm.DocumentArgs{
/// 			AttachmentsSources: ssm.DocumentAttachmentsSourceArray{
/// 				&ssm.DocumentAttachmentsSourceArgs{
/// 					Key: pulumi.String("SourceUrl"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.Sprintf("s3://%v/test.zip", objectBucket.Bucket),
/// 					},
/// 				},
/// 			},
/// 			Name:         pulumi.String("test_document"),
/// 			DocumentType: pulumi.String("Package"),
/// 		}, pulumi.IgnoreChanges([]string{
/// 			"attachmentsSources",
/// 		}))
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
/// resource "aws_ssm_document" "test" {
///   lifecycle {
///     ignore_changes = [attachmentsSources]
///   }
///   attachments_sources {
///     key    = "SourceUrl"
///     values = ["s3://${objectBucket.bucket}/test.zip"]
///   }
///   name          = "test_document"
///   document_type = "Package"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.Document;
/// import com.pulumi.aws.ssm.DocumentArgs;
/// import com.pulumi.aws.ssm.inputs.DocumentAttachmentsSourceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var test = new Document("test", DocumentArgs.builder()
///             .attachmentsSources(DocumentAttachmentsSourceArgs.builder()
///                 .key("SourceUrl")
///                 .values(String.format("s3://%s/test.zip", objectBucket.bucket()))
///                 .build())
///             .name("test_document")
///             .documentType("Package")
///             .build(), CustomResourceOptions.builder()
///                 .ignoreChanges("attachmentsSources")
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ssm:Document
///     properties:
///       attachmentsSources:
///         - key: SourceUrl
///           values:
///             - s3://${objectBucket.bucket}/test.zip
///       name: test_document
///       documentType: Package
///     options:
///       ignoreChanges:
///         - attachmentsSources
/// ```
class Document extends pulumi.CustomResource {
  /// ARN of the document.
  late final pulumi.Output<String> arn;
  /// One or more configuration blocks describing attachments sources to a version of a document. See `attachmentsSource` block below for details.
  late final pulumi.Output<List<DocumentAttachmentsSource>?> attachmentsSources;
  /// The content for the SSM document in JSON or YAML format. The content of the document must not exceed 64KB. This quota also includes the content specified for input parameters at runtime. We recommend storing the contents for your new document in an external JSON or YAML file and referencing the file in a command.
  late final pulumi.Output<String> content;
  /// The date the document was created.
  late final pulumi.Output<String> createdDate;
  /// The default version of the document.
  late final pulumi.Output<String> defaultVersion;
  /// A description of what the parameter does, how to use it, the default value, and whether or not the parameter is optional.
  late final pulumi.Output<String> description;
  /// The format of the document. Valid values: `JSON`, `TEXT`, `YAML`.
  late final pulumi.Output<String?> documentFormat;
  /// The type of the document. For a list of valid values, see the [API Reference](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_CreateDocument.html#systemsmanager-CreateDocument-request-DocumentType).
  late final pulumi.Output<String> documentType;
  /// The document version.
  late final pulumi.Output<String> documentVersion;
  /// The Sha256 or Sha1 hash created by the system when the document was created.
  late final pulumi.Output<String> hash;
  /// The hash type of the document. Valid values: `Sha256`, `Sha1`.
  late final pulumi.Output<String> hashType;
  /// The latest version of the document.
  late final pulumi.Output<String> latestVersion;
  /// The name of the document.
  late final pulumi.Output<String> name;
  /// The Amazon Web Services user that created the document.
  late final pulumi.Output<String> owner;
  /// One or more configuration blocks describing the parameters for the document. See `parameter` block below for details.
  late final pulumi.Output<List<DocumentParameter>> parameters;
  /// Additional permissions to attach to the document. See Permissions below for details.
  late final pulumi.Output<Map<String, String>?> permissions;
  /// The list of operating system (OS) platforms compatible with this SSM document. Valid values: `Windows`, `Linux`, `MacOS`.
  late final pulumi.Output<List<String>> platformTypes;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The schema version of the document.
  late final pulumi.Output<String> schemaVersion;
  /// The status of the SSM document. Valid values: `Creating`, `Active`, `Updating`, `Deleting`, `Failed`.
  late final pulumi.Output<String> status;
  /// A map of tags to assign to the object. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The target type which defines the kinds of resources the document can run on. For example, `/AWS::EC2::Instance`. For a list of valid resource types, see [AWS resource and property types reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html).
  late final pulumi.Output<String?> targetType;
  /// The version of the artifact associated with the document. For example, `12.6`. This value is unique across all versions of a document, and can't be changed.
  late final pulumi.Output<String?> versionName;

  /// Creates a new [Document].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Document]. {@macro pulumi_ssm_document_document_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Document(
    String name, {
    DocumentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/document:Document',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    attachmentsSources = registerOutput<List<DocumentAttachmentsSource>?>('attachmentsSources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DocumentAttachmentsSource>(guardedValue, (value) => DocumentAttachmentsSource.fromMap((value as Map).cast<String, dynamic>())); });
    content = registerOutput<String>('content');
    createdDate = registerOutput<String>('createdDate');
    defaultVersion = registerOutput<String>('defaultVersion');
    description = registerOutput<String>('description');
    documentFormat = registerOutput<String?>('documentFormat');
    documentType = registerOutput<String>('documentType');
    documentVersion = registerOutput<String>('documentVersion');
    hash = registerOutput<String>('hash');
    hashType = registerOutput<String>('hashType');
    latestVersion = registerOutput<String>('latestVersion');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    parameters = registerOutput<List<DocumentParameter>>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DocumentParameter>(guardedValue, (value) => DocumentParameter.fromMap((value as Map).cast<String, dynamic>())); });
    permissions = registerOutput<Map<String, String>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    platformTypes = registerOutput<List<String>>('platformTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    schemaVersion = registerOutput<String>('schemaVersion');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetType = registerOutput<String?>('targetType');
    versionName = registerOutput<String?>('versionName');
  }

  /// Gets an existing [Document] resource's state with the given [name] and [id].
  static Document get(
    String name,
    pulumi.Input<String> id, {
    DocumentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Document._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Document._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/document:Document',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    attachmentsSources = registerOutput<List<DocumentAttachmentsSource>?>('attachmentsSources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DocumentAttachmentsSource>(guardedValue, (value) => DocumentAttachmentsSource.fromMap((value as Map).cast<String, dynamic>())); });
    content = registerOutput<String>('content');
    createdDate = registerOutput<String>('createdDate');
    defaultVersion = registerOutput<String>('defaultVersion');
    description = registerOutput<String>('description');
    documentFormat = registerOutput<String?>('documentFormat');
    documentType = registerOutput<String>('documentType');
    documentVersion = registerOutput<String>('documentVersion');
    hash = registerOutput<String>('hash');
    hashType = registerOutput<String>('hashType');
    latestVersion = registerOutput<String>('latestVersion');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    parameters = registerOutput<List<DocumentParameter>>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DocumentParameter>(guardedValue, (value) => DocumentParameter.fromMap((value as Map).cast<String, dynamic>())); });
    permissions = registerOutput<Map<String, String>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    platformTypes = registerOutput<List<String>>('platformTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    schemaVersion = registerOutput<String>('schemaVersion');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetType = registerOutput<String?>('targetType');
    versionName = registerOutput<String?>('versionName');
  }

  /// Creates a typed reference to an existing [Document] resource.
  Document.reference(String urn)
    : super(
        'aws:ssm/document:Document',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    attachmentsSources = registerOutput<List<DocumentAttachmentsSource>?>('attachmentsSources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DocumentAttachmentsSource>(guardedValue, (value) => DocumentAttachmentsSource.fromMap((value as Map).cast<String, dynamic>())); });
    content = registerOutput<String>('content');
    createdDate = registerOutput<String>('createdDate');
    defaultVersion = registerOutput<String>('defaultVersion');
    description = registerOutput<String>('description');
    documentFormat = registerOutput<String?>('documentFormat');
    documentType = registerOutput<String>('documentType');
    documentVersion = registerOutput<String>('documentVersion');
    hash = registerOutput<String>('hash');
    hashType = registerOutput<String>('hashType');
    latestVersion = registerOutput<String>('latestVersion');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    parameters = registerOutput<List<DocumentParameter>>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DocumentParameter>(guardedValue, (value) => DocumentParameter.fromMap((value as Map).cast<String, dynamic>())); });
    permissions = registerOutput<Map<String, String>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    platformTypes = registerOutput<List<String>>('platformTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    schemaVersion = registerOutput<String>('schemaVersion');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetType = registerOutput<String?>('targetType');
    versionName = registerOutput<String?>('versionName');
  }
}
