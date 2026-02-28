import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_ai_processor_default_version_args.dart';

/// The default version for the processor. Deleting this resource is a no-op, and does not unset the default version.
///
///
///
/// ## Example Usage
///
/// ### Documentai Default Version
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const processor = new gcp.essentialcontacts.DocumentAiProcessor("processor", {
///     location: "us",
///     displayName: "test-processor",
///     type: "OCR_PROCESSOR",
/// });
/// const processorDocumentAiProcessorDefaultVersion = new gcp.essentialcontacts.DocumentAiProcessorDefaultVersion("processor", {
///     processor: processor.id,
///     version: pulumi.interpolate`${processor.id}/processorVersions/stable`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// processor = gcp.essentialcontacts.DocumentAiProcessor("processor",
///     location="us",
///     display_name="test-processor",
///     type="OCR_PROCESSOR")
/// processor_document_ai_processor_default_version = gcp.essentialcontacts.DocumentAiProcessorDefaultVersion("processor",
///     processor=processor.id,
///     version=processor.id.apply(lambda id: f"{id}/processorVersions/stable"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var processor = new Gcp.EssentialContacts.DocumentAiProcessor("processor", new()
///     {
///         Location = "us",
///         DisplayName = "test-processor",
///         Type = "OCR_PROCESSOR",
///     });
///
///     var processorDocumentAiProcessorDefaultVersion = new Gcp.EssentialContacts.DocumentAiProcessorDefaultVersion("processor", new()
///     {
///         Processor = processor.Id,
///         Version = processor.Id.Apply(id => $"{id}/processorVersions/stable"),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/essentialcontacts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		processor, err := essentialcontacts.NewDocumentAiProcessor(ctx, "processor", &essentialcontacts.DocumentAiProcessorArgs{
/// 			Location:    pulumi.String("us"),
/// 			DisplayName: pulumi.String("test-processor"),
/// 			Type:        pulumi.String("OCR_PROCESSOR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = essentialcontacts.NewDocumentAiProcessorDefaultVersion(ctx, "processor", &essentialcontacts.DocumentAiProcessorDefaultVersionArgs{
/// 			Processor: processor.ID(),
/// 			Version: processor.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf("%v/processorVersions/stable", id), nil
/// 			}).(pulumi.StringOutput),
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
/// import com.pulumi.gcp.essentialcontacts.DocumentAiProcessor;
/// import com.pulumi.gcp.essentialcontacts.DocumentAiProcessorArgs;
/// import com.pulumi.gcp.essentialcontacts.DocumentAiProcessorDefaultVersion;
/// import com.pulumi.gcp.essentialcontacts.DocumentAiProcessorDefaultVersionArgs;
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
///         var processor = new DocumentAiProcessor("processor", DocumentAiProcessorArgs.builder()
///             .location("us")
///             .displayName("test-processor")
///             .type("OCR_PROCESSOR")
///             .build());
///
///         var processorDocumentAiProcessorDefaultVersion = new DocumentAiProcessorDefaultVersion("processorDocumentAiProcessorDefaultVersion", DocumentAiProcessorDefaultVersionArgs.builder()
///             .processor(processor.id())
///             .version(processor.id().applyValue(_id -> String.format("%s/processorVersions/stable", _id)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   processor:
///     type: gcp:essentialcontacts:DocumentAiProcessor
///     properties:
///       location: us
///       displayName: test-processor
///       type: OCR_PROCESSOR
///   processorDocumentAiProcessorDefaultVersion:
///     type: gcp:essentialcontacts:DocumentAiProcessorDefaultVersion
///     name: processor
///     properties:
///       processor: ${processor.id}
///       version: ${processor.id}/processorVersions/stable
/// ```
///
///
/// ## Import
///
/// ProcessorDefaultVersion can be imported using any of these accepted formats:
///
/// * `{{processor}}`
///
/// When using the `pulumi import` command, ProcessorDefaultVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:essentialcontacts/documentAiProcessorDefaultVersion:DocumentAiProcessorDefaultVersion default {{processor}}
/// ```
class DocumentAiProcessorDefaultVersion extends pulumi.CustomResource {
  /// The processor to set the version on.
  late final pulumi.Output<String> processor;

  /// The version to set. Using `stable` or `rc` will cause the API to return the latest version in that release channel.
  /// Apply `lifecycle.ignore_changes` to the `version` field to suppress this diff.
  late final pulumi.Output<String> version;

  /// Creates a new [DocumentAiProcessorDefaultVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DocumentAiProcessorDefaultVersion]. {@macro pulumi_essentialcontacts_document_ai_processor_default_version_document_ai_processor_default_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DocumentAiProcessorDefaultVersion(
    String name, {
    DocumentAiProcessorDefaultVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:essentialcontacts/documentAiProcessorDefaultVersion:DocumentAiProcessorDefaultVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.processor = registerOutput<String>('processor');
    this.version = registerOutput<String>('version');
  }
}
