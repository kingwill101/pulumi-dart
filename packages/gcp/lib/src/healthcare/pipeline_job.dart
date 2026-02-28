import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_job_args.dart';
import 'pipeline_job_backfill_pipeline_job.dart';
import 'pipeline_job_mapping_pipeline_job.dart';
import 'pipeline_job_reconciliation_pipeline_job.dart';

/// PipelineJobs are Long Running Operations on Healthcare API to Map or Reconcile
/// incoming data into FHIR format
///
///
/// To get more information about PipelineJob, see:
///
/// * [API documentation](https://cloud.google.com/healthcare-api/healthcare-data-engine/docs/reference/rest/v1/projects.locations.datasets.pipelineJobs)
/// * How-to Guides
/// * [Creating a PipelineJob](https://cloud.google.com/healthcare-api/private/healthcare-data-engine/docs/reference/rest/v1/projects.locations.datasets.pipelineJobs#PipelineJob)
///
/// ## Example Usage
///
/// ### Healthcare Pipeline Job Reconciliation
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const dataset = new gcp.healthcare.Dataset("dataset", {
///     name: "example_dataset",
///     location: "us-central1",
/// });
/// const fhirstore = new gcp.healthcare.FhirStore("fhirstore", {
///     name: "fhir_store",
///     dataset: dataset.id,
///     version: "R4",
///     enableUpdateCreate: true,
///     disableReferentialIntegrity: true,
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "example_bucket_name",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
/// });
/// const mergeFile = new gcp.storage.BucketObject("merge_file", {
///     name: "merge.wstl",
///     content: " ",
///     bucket: bucket.name,
/// });
/// const example_pipeline = new gcp.healthcare.PipelineJob("example-pipeline", {
///     name: "example_pipeline_job",
///     location: "us-central1",
///     dataset: dataset.id,
///     disableLineage: true,
///     reconciliationPipelineJob: {
///         mergeConfig: {
///             description: "sample description for reconciliation rules",
///             whistleConfigSource: {
///                 uri: pulumi.interpolate`gs://${bucket.name}/${mergeFile.name}`,
///                 importUriPrefix: pulumi.interpolate`gs://${bucket.name}`,
///             },
///         },
///         matchingUriPrefix: pulumi.interpolate`gs://${bucket.name}`,
///         fhirStoreDestination: pulumi.interpolate`${dataset.id}/fhirStores/${fhirstore.name}`,
///     },
/// });
/// const hsa = new gcp.storage.BucketIAMMember("hsa", {
///     bucket: bucket.name,
///     role: "roles/storage.objectUser",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-healthcare.iam.gserviceaccount.com`),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// dataset = gcp.healthcare.Dataset("dataset",
///     name="example_dataset",
///     location="us-central1")
/// fhirstore = gcp.healthcare.FhirStore("fhirstore",
///     name="fhir_store",
///     dataset=dataset.id,
///     version="R4",
///     enable_update_create=True,
///     disable_referential_integrity=True)
/// bucket = gcp.storage.Bucket("bucket",
///     name="example_bucket_name",
///     location="us-central1",
///     uniform_bucket_level_access=True)
/// merge_file = gcp.storage.BucketObject("merge_file",
///     name="merge.wstl",
///     content=" ",
///     bucket=bucket.name)
/// example_pipeline = gcp.healthcare.PipelineJob("example-pipeline",
///     name="example_pipeline_job",
///     location="us-central1",
///     dataset=dataset.id,
///     disable_lineage=True,
///     reconciliation_pipeline_job={
///         "merge_config": {
///             "description": "sample description for reconciliation rules",
///             "whistle_config_source": {
///                 "uri": pulumi.Output.all(
///                     bucketName=bucket.name,
///                     mergeFileName=merge_file.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucketName']}/{resolved_outputs['mergeFileName']}")
/// ,
///                 "import_uri_prefix": bucket.name.apply(lambda name: f"gs://{name}"),
///             },
///         },
///         "matching_uri_prefix": bucket.name.apply(lambda name: f"gs://{name}"),
///         "fhir_store_destination": pulumi.Output.all(
///             id=dataset.id,
///             name=fhirstore.name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['id']}/fhirStores/{resolved_outputs['name']}")
/// ,
///     })
/// hsa = gcp.storage.BucketIAMMember("hsa",
///     bucket=bucket.name,
///     role="roles/storage.objectUser",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-healthcare.iam.gserviceaccount.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var dataset = new Gcp.Healthcare.Dataset("dataset", new()
///     {
///         Name = "example_dataset",
///         Location = "us-central1",
///     });
///
///     var fhirstore = new Gcp.Healthcare.FhirStore("fhirstore", new()
///     {
///         Name = "fhir_store",
///         Dataset = dataset.Id,
///         Version = "R4",
///         EnableUpdateCreate = true,
///         DisableReferentialIntegrity = true,
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "example_bucket_name",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///     });
///
///     var mergeFile = new Gcp.Storage.BucketObject("merge_file", new()
///     {
///         Name = "merge.wstl",
///         Content = " ",
///         Bucket = bucket.Name,
///     });
///
///     var example_pipeline = new Gcp.Healthcare.PipelineJob("example-pipeline", new()
///     {
///         Name = "example_pipeline_job",
///         Location = "us-central1",
///         Dataset = dataset.Id,
///         DisableLineage = true,
///         ReconciliationPipelineJob = new Gcp.Healthcare.Inputs.PipelineJobReconciliationPipelineJobArgs
///         {
///             MergeConfig = new Gcp.Healthcare.Inputs.PipelineJobReconciliationPipelineJobMergeConfigArgs
///             {
///                 Description = "sample description for reconciliation rules",
///                 WhistleConfigSource = new Gcp.Healthcare.Inputs.PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSourceArgs
///                 {
///                     Uri = Output.Tuple(bucket.Name, mergeFile.Name).Apply(values =>
///                     {
///                         var bucketName = values.Item1;
///                         var mergeFileName = values.Item2;
///                         return $"gs://{bucketName}/{mergeFileName}";
///                     }),
///                     ImportUriPrefix = bucket.Name.Apply(name => $"gs://{name}"),
///                 },
///             },
///             MatchingUriPrefix = bucket.Name.Apply(name => $"gs://{name}"),
///             FhirStoreDestination = Output.Tuple(dataset.Id, fhirstore.Name).Apply(values =>
///             {
///                 var id = values.Item1;
///                 var name = values.Item2;
///                 return $"{id}/fhirStores/{name}";
///             }),
///         },
///     });
///
///     var hsa = new Gcp.Storage.BucketIAMMember("hsa", new()
///     {
///         Bucket = bucket.Name,
///         Role = "roles/storage.objectUser",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-healthcare.iam.gserviceaccount.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dataset, err := healthcare.NewDataset(ctx, "dataset", &healthcare.DatasetArgs{
/// 			Name:     pulumi.String("example_dataset"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fhirstore, err := healthcare.NewFhirStore(ctx, "fhirstore", &healthcare.FhirStoreArgs{
/// 			Name:                        pulumi.String("fhir_store"),
/// 			Dataset:                     dataset.ID(),
/// 			Version:                     pulumi.String("R4"),
/// 			EnableUpdateCreate:          pulumi.Bool(true),
/// 			DisableReferentialIntegrity: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("example_bucket_name"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mergeFile, err := storage.NewBucketObject(ctx, "merge_file", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("merge.wstl"),
/// 			Content: pulumi.String(" "),
/// 			Bucket:  bucket.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = healthcare.NewPipelineJob(ctx, "example-pipeline", &healthcare.PipelineJobArgs{
/// 			Name:           pulumi.String("example_pipeline_job"),
/// 			Location:       pulumi.String("us-central1"),
/// 			Dataset:        dataset.ID(),
/// 			DisableLineage: pulumi.Bool(true),
/// 			ReconciliationPipelineJob: &healthcare.PipelineJobReconciliationPipelineJobArgs{
/// 				MergeConfig: &healthcare.PipelineJobReconciliationPipelineJobMergeConfigArgs{
/// 					Description: pulumi.String("sample description for reconciliation rules"),
/// 					WhistleConfigSource: &healthcare.PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSourceArgs{
/// 						Uri: pulumi.All(bucket.Name, mergeFile.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 							bucketName := _args[0].(string)
/// 							mergeFileName := _args[1].(string)
/// 							return fmt.Sprintf("gs://%v/%v", bucketName, mergeFileName), nil
/// 						}).(pulumi.StringOutput),
/// 						ImportUriPrefix: bucket.Name.ApplyT(func(name string) (string, error) {
/// 							return fmt.Sprintf("gs://%v", name), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 				MatchingUriPrefix: bucket.Name.ApplyT(func(name string) (string, error) {
/// 					return fmt.Sprintf("gs://%v", name), nil
/// 				}).(pulumi.StringOutput),
/// 				FhirStoreDestination: pulumi.All(dataset.ID(), fhirstore.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 					id := _args[0].(string)
/// 					name := _args[1].(string)
/// 					return fmt.Sprintf("%v/fhirStores/%v", id, name), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBucketIAMMember(ctx, "hsa", &storage.BucketIAMMemberArgs{
/// 			Bucket: bucket.Name,
/// 			Role:   pulumi.String("roles/storage.objectUser"),
/// 			Member: pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-healthcare.iam.gserviceaccount.com", project.Number),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.healthcare.Dataset;
/// import com.pulumi.gcp.healthcare.DatasetArgs;
/// import com.pulumi.gcp.healthcare.FhirStore;
/// import com.pulumi.gcp.healthcare.FhirStoreArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.healthcare.PipelineJob;
/// import com.pulumi.gcp.healthcare.PipelineJobArgs;
/// import com.pulumi.gcp.healthcare.inputs.PipelineJobReconciliationPipelineJobArgs;
/// import com.pulumi.gcp.healthcare.inputs.PipelineJobReconciliationPipelineJobMergeConfigArgs;
/// import com.pulumi.gcp.healthcare.inputs.PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSourceArgs;
/// import com.pulumi.gcp.storage.BucketIAMMember;
/// import com.pulumi.gcp.storage.BucketIAMMemberArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .name("example_dataset")
///             .location("us-central1")
///             .build());
///
///         var fhirstore = new FhirStore("fhirstore", FhirStoreArgs.builder()
///             .name("fhir_store")
///             .dataset(dataset.id())
///             .version("R4")
///             .enableUpdateCreate(true)
///             .disableReferentialIntegrity(true)
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("example_bucket_name")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var mergeFile = new BucketObject("mergeFile", BucketObjectArgs.builder()
///             .name("merge.wstl")
///             .content(" ")
///             .bucket(bucket.name())
///             .build());
///
///         var example_pipeline = new PipelineJob("example-pipeline", PipelineJobArgs.builder()
///             .name("example_pipeline_job")
///             .location("us-central1")
///             .dataset(dataset.id())
///             .disableLineage(true)
///             .reconciliationPipelineJob(PipelineJobReconciliationPipelineJobArgs.builder()
///                 .mergeConfig(PipelineJobReconciliationPipelineJobMergeConfigArgs.builder()
///                     .description("sample description for reconciliation rules")
///                     .whistleConfigSource(PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSourceArgs.builder()
///                         .uri(Output.tuple(bucket.name(), mergeFile.name()).applyValue(values -> {
///                             var bucketName = values.t1;
///                             var mergeFileName = values.t2;
///                             return String.format("gs://%s/%s", bucketName,mergeFileName);
///                         }))
///                         .importUriPrefix(bucket.name().applyValue(_name -> String.format("gs://%s", _name)))
///                         .build())
///                     .build())
///                 .matchingUriPrefix(bucket.name().applyValue(_name -> String.format("gs://%s", _name)))
///                 .fhirStoreDestination(Output.tuple(dataset.id(), fhirstore.name()).applyValue(values -> {
///                     var id = values.t1;
///                     var name = values.t2;
///                     return String.format("%s/fhirStores/%s", id,name);
///                 }))
///                 .build())
///             .build());
///
///         var hsa = new BucketIAMMember("hsa", BucketIAMMemberArgs.builder()
///             .bucket(bucket.name())
///             .role("roles/storage.objectUser")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-healthcare.iam.gserviceaccount.com", project.number()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-pipeline:
///     type: gcp:healthcare:PipelineJob
///     properties:
///       name: example_pipeline_job
///       location: us-central1
///       dataset: ${dataset.id}
///       disableLineage: true
///       reconciliationPipelineJob:
///         mergeConfig:
///           description: sample description for reconciliation rules
///           whistleConfigSource:
///             uri: gs://${bucket.name}/${mergeFile.name}
///             importUriPrefix: gs://${bucket.name}
///         matchingUriPrefix: gs://${bucket.name}
///         fhirStoreDestination: ${dataset.id}/fhirStores/${fhirstore.name}
///   dataset:
///     type: gcp:healthcare:Dataset
///     properties:
///       name: example_dataset
///       location: us-central1
///   fhirstore:
///     type: gcp:healthcare:FhirStore
///     properties:
///       name: fhir_store
///       dataset: ${dataset.id}
///       version: R4
///       enableUpdateCreate: true
///       disableReferentialIntegrity: true
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: example_bucket_name
///       location: us-central1
///       uniformBucketLevelAccess: true
///   mergeFile:
///     type: gcp:storage:BucketObject
///     name: merge_file
///     properties:
///       name: merge.wstl
///       content: ' '
///       bucket: ${bucket.name}
///   hsa:
///     type: gcp:storage:BucketIAMMember
///     properties:
///       bucket: ${bucket.name}
///       role: roles/storage.objectUser
///       member: serviceAccount:service-${project.number}@gcp-sa-healthcare.iam.gserviceaccount.com
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Healthcare Pipeline Job Backfill
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.healthcare.Dataset("dataset", {
///     name: "example_dataset",
///     location: "us-central1",
/// });
/// const example_pipeline = new gcp.healthcare.PipelineJob("example-pipeline", {
///     name: "example_backfill_pipeline",
///     location: "us-central1",
///     dataset: dataset.id,
///     backfillPipelineJob: {
///         mappingPipelineJob: pulumi.interpolate`${dataset.id}/pipelineJobs/example_mapping_pipeline_job`,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.healthcare.Dataset("dataset",
///     name="example_dataset",
///     location="us-central1")
/// example_pipeline = gcp.healthcare.PipelineJob("example-pipeline",
///     name="example_backfill_pipeline",
///     location="us-central1",
///     dataset=dataset.id,
///     backfill_pipeline_job={
///         "mapping_pipeline_job": dataset.id.apply(lambda id: f"{id}/pipelineJobs/example_mapping_pipeline_job"),
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataset = new Gcp.Healthcare.Dataset("dataset", new()
///     {
///         Name = "example_dataset",
///         Location = "us-central1",
///     });
///
///     var example_pipeline = new Gcp.Healthcare.PipelineJob("example-pipeline", new()
///     {
///         Name = "example_backfill_pipeline",
///         Location = "us-central1",
///         Dataset = dataset.Id,
///         BackfillPipelineJob = new Gcp.Healthcare.Inputs.PipelineJobBackfillPipelineJobArgs
///         {
///             MappingPipelineJob = dataset.Id.Apply(id => $"{id}/pipelineJobs/example_mapping_pipeline_job"),
///         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dataset, err := healthcare.NewDataset(ctx, "dataset", &healthcare.DatasetArgs{
/// 			Name:     pulumi.String("example_dataset"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = healthcare.NewPipelineJob(ctx, "example-pipeline", &healthcare.PipelineJobArgs{
/// 			Name:     pulumi.String("example_backfill_pipeline"),
/// 			Location: pulumi.String("us-central1"),
/// 			Dataset:  dataset.ID(),
/// 			BackfillPipelineJob: &healthcare.PipelineJobBackfillPipelineJobArgs{
/// 				MappingPipelineJob: dataset.ID().ApplyT(func(id string) (string, error) {
/// 					return fmt.Sprintf("%v/pipelineJobs/example_mapping_pipeline_job", id), nil
/// 				}).(pulumi.StringOutput),
/// 			},
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
/// import com.pulumi.gcp.healthcare.Dataset;
/// import com.pulumi.gcp.healthcare.DatasetArgs;
/// import com.pulumi.gcp.healthcare.PipelineJob;
/// import com.pulumi.gcp.healthcare.PipelineJobArgs;
/// import com.pulumi.gcp.healthcare.inputs.PipelineJobBackfillPipelineJobArgs;
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
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .name("example_dataset")
///             .location("us-central1")
///             .build());
///
///         var example_pipeline = new PipelineJob("example-pipeline", PipelineJobArgs.builder()
///             .name("example_backfill_pipeline")
///             .location("us-central1")
///             .dataset(dataset.id())
///             .backfillPipelineJob(PipelineJobBackfillPipelineJobArgs.builder()
///                 .mappingPipelineJob(dataset.id().applyValue(_id -> String.format("%s/pipelineJobs/example_mapping_pipeline_job", _id)))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-pipeline:
///     type: gcp:healthcare:PipelineJob
///     properties:
///       name: example_backfill_pipeline
///       location: us-central1
///       dataset: ${dataset.id}
///       backfillPipelineJob:
///         mappingPipelineJob: ${dataset.id}/pipelineJobs/example_mapping_pipeline_job
///   dataset:
///     type: gcp:healthcare:Dataset
///     properties:
///       name: example_dataset
///       location: us-central1
/// ```
///
/// ### Healthcare Pipeline Job Whistle Mapping
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const dataset = new gcp.healthcare.Dataset("dataset", {
///     name: "example_dataset",
///     location: "us-central1",
/// });
/// const sourceFhirstore = new gcp.healthcare.FhirStore("source_fhirstore", {
///     name: "source_fhir_store",
///     dataset: dataset.id,
///     version: "R4",
///     enableUpdateCreate: true,
///     disableReferentialIntegrity: true,
/// });
/// const destFhirstore = new gcp.healthcare.FhirStore("dest_fhirstore", {
///     name: "dest_fhir_store",
///     dataset: dataset.id,
///     version: "R4",
///     enableUpdateCreate: true,
///     disableReferentialIntegrity: true,
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "example_bucket_name",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
/// });
/// const mappingFile = new gcp.storage.BucketObject("mapping_file", {
///     name: "mapping.wstl",
///     content: " ",
///     bucket: bucket.name,
/// });
/// const example_mapping_pipeline = new gcp.healthcare.PipelineJob("example-mapping-pipeline", {
///     name: "example_mapping_pipeline_job",
///     location: "us-central1",
///     dataset: dataset.id,
///     disableLineage: true,
///     labels: {
///         example_label_key: "example_label_value",
///     },
///     mappingPipelineJob: {
///         mappingConfig: {
///             whistleConfigSource: {
///                 uri: pulumi.interpolate`gs://${bucket.name}/${mappingFile.name}`,
///                 importUriPrefix: pulumi.interpolate`gs://${bucket.name}`,
///             },
///             description: "example description for mapping configuration",
///         },
///         fhirStreamingSource: {
///             fhirStore: pulumi.interpolate`${dataset.id}/fhirStores/${sourceFhirstore.name}`,
///             description: "example description for streaming fhirstore",
///         },
///         fhirStoreDestination: pulumi.interpolate`${dataset.id}/fhirStores/${destFhirstore.name}`,
///     },
/// });
/// const hsa = new gcp.storage.BucketIAMMember("hsa", {
///     bucket: bucket.name,
///     role: "roles/storage.objectUser",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-healthcare.iam.gserviceaccount.com`),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// dataset = gcp.healthcare.Dataset("dataset",
///     name="example_dataset",
///     location="us-central1")
/// source_fhirstore = gcp.healthcare.FhirStore("source_fhirstore",
///     name="source_fhir_store",
///     dataset=dataset.id,
///     version="R4",
///     enable_update_create=True,
///     disable_referential_integrity=True)
/// dest_fhirstore = gcp.healthcare.FhirStore("dest_fhirstore",
///     name="dest_fhir_store",
///     dataset=dataset.id,
///     version="R4",
///     enable_update_create=True,
///     disable_referential_integrity=True)
/// bucket = gcp.storage.Bucket("bucket",
///     name="example_bucket_name",
///     location="us-central1",
///     uniform_bucket_level_access=True)
/// mapping_file = gcp.storage.BucketObject("mapping_file",
///     name="mapping.wstl",
///     content=" ",
///     bucket=bucket.name)
/// example_mapping_pipeline = gcp.healthcare.PipelineJob("example-mapping-pipeline",
///     name="example_mapping_pipeline_job",
///     location="us-central1",
///     dataset=dataset.id,
///     disable_lineage=True,
///     labels={
///         "example_label_key": "example_label_value",
///     },
///     mapping_pipeline_job={
///         "mapping_config": {
///             "whistle_config_source": {
///                 "uri": pulumi.Output.all(
///                     bucketName=bucket.name,
///                     mappingFileName=mapping_file.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucketName']}/{resolved_outputs['mappingFileName']}")
/// ,
///                 "import_uri_prefix": bucket.name.apply(lambda name: f"gs://{name}"),
///             },
///             "description": "example description for mapping configuration",
///         },
///         "fhir_streaming_source": {
///             "fhir_store": pulumi.Output.all(
///                 id=dataset.id,
///                 name=source_fhirstore.name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['id']}/fhirStores/{resolved_outputs['name']}")
/// ,
///             "description": "example description for streaming fhirstore",
///         },
///         "fhir_store_destination": pulumi.Output.all(
///             id=dataset.id,
///             name=dest_fhirstore.name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['id']}/fhirStores/{resolved_outputs['name']}")
/// ,
///     })
/// hsa = gcp.storage.BucketIAMMember("hsa",
///     bucket=bucket.name,
///     role="roles/storage.objectUser",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-healthcare.iam.gserviceaccount.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var dataset = new Gcp.Healthcare.Dataset("dataset", new()
///     {
///         Name = "example_dataset",
///         Location = "us-central1",
///     });
///
///     var sourceFhirstore = new Gcp.Healthcare.FhirStore("source_fhirstore", new()
///     {
///         Name = "source_fhir_store",
///         Dataset = dataset.Id,
///         Version = "R4",
///         EnableUpdateCreate = true,
///         DisableReferentialIntegrity = true,
///     });
///
///     var destFhirstore = new Gcp.Healthcare.FhirStore("dest_fhirstore", new()
///     {
///         Name = "dest_fhir_store",
///         Dataset = dataset.Id,
///         Version = "R4",
///         EnableUpdateCreate = true,
///         DisableReferentialIntegrity = true,
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "example_bucket_name",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///     });
///
///     var mappingFile = new Gcp.Storage.BucketObject("mapping_file", new()
///     {
///         Name = "mapping.wstl",
///         Content = " ",
///         Bucket = bucket.Name,
///     });
///
///     var example_mapping_pipeline = new Gcp.Healthcare.PipelineJob("example-mapping-pipeline", new()
///     {
///         Name = "example_mapping_pipeline_job",
///         Location = "us-central1",
///         Dataset = dataset.Id,
///         DisableLineage = true,
///         Labels =
///         {
///             { "example_label_key", "example_label_value" },
///         },
///         MappingPipelineJob = new Gcp.Healthcare.Inputs.PipelineJobMappingPipelineJobArgs
///         {
///             MappingConfig = new Gcp.Healthcare.Inputs.PipelineJobMappingPipelineJobMappingConfigArgs
///             {
///                 WhistleConfigSource = new Gcp.Healthcare.Inputs.PipelineJobMappingPipelineJobMappingConfigWhistleConfigSourceArgs
///                 {
///                     Uri = Output.Tuple(bucket.Name, mappingFile.Name).Apply(values =>
///                     {
///                         var bucketName = values.Item1;
///                         var mappingFileName = values.Item2;
///                         return $"gs://{bucketName}/{mappingFileName}";
///                     }),
///                     ImportUriPrefix = bucket.Name.Apply(name => $"gs://{name}"),
///                 },
///                 Description = "example description for mapping configuration",
///             },
///             FhirStreamingSource = new Gcp.Healthcare.Inputs.PipelineJobMappingPipelineJobFhirStreamingSourceArgs
///             {
///                 FhirStore = Output.Tuple(dataset.Id, sourceFhirstore.Name).Apply(values =>
///                 {
///                     var id = values.Item1;
///                     var name = values.Item2;
///                     return $"{id}/fhirStores/{name}";
///                 }),
///                 Description = "example description for streaming fhirstore",
///             },
///             FhirStoreDestination = Output.Tuple(dataset.Id, destFhirstore.Name).Apply(values =>
///             {
///                 var id = values.Item1;
///                 var name = values.Item2;
///                 return $"{id}/fhirStores/{name}";
///             }),
///         },
///     });
///
///     var hsa = new Gcp.Storage.BucketIAMMember("hsa", new()
///     {
///         Bucket = bucket.Name,
///         Role = "roles/storage.objectUser",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-healthcare.iam.gserviceaccount.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dataset, err := healthcare.NewDataset(ctx, "dataset", &healthcare.DatasetArgs{
/// 			Name:     pulumi.String("example_dataset"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourceFhirstore, err := healthcare.NewFhirStore(ctx, "source_fhirstore", &healthcare.FhirStoreArgs{
/// 			Name:                        pulumi.String("source_fhir_store"),
/// 			Dataset:                     dataset.ID(),
/// 			Version:                     pulumi.String("R4"),
/// 			EnableUpdateCreate:          pulumi.Bool(true),
/// 			DisableReferentialIntegrity: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destFhirstore, err := healthcare.NewFhirStore(ctx, "dest_fhirstore", &healthcare.FhirStoreArgs{
/// 			Name:                        pulumi.String("dest_fhir_store"),
/// 			Dataset:                     dataset.ID(),
/// 			Version:                     pulumi.String("R4"),
/// 			EnableUpdateCreate:          pulumi.Bool(true),
/// 			DisableReferentialIntegrity: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("example_bucket_name"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mappingFile, err := storage.NewBucketObject(ctx, "mapping_file", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("mapping.wstl"),
/// 			Content: pulumi.String(" "),
/// 			Bucket:  bucket.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = healthcare.NewPipelineJob(ctx, "example-mapping-pipeline", &healthcare.PipelineJobArgs{
/// 			Name:           pulumi.String("example_mapping_pipeline_job"),
/// 			Location:       pulumi.String("us-central1"),
/// 			Dataset:        dataset.ID(),
/// 			DisableLineage: pulumi.Bool(true),
/// 			Labels: pulumi.StringMap{
/// 				"example_label_key": pulumi.String("example_label_value"),
/// 			},
/// 			MappingPipelineJob: &healthcare.PipelineJobMappingPipelineJobArgs{
/// 				MappingConfig: &healthcare.PipelineJobMappingPipelineJobMappingConfigArgs{
/// 					WhistleConfigSource: &healthcare.PipelineJobMappingPipelineJobMappingConfigWhistleConfigSourceArgs{
/// 						Uri: pulumi.All(bucket.Name, mappingFile.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 							bucketName := _args[0].(string)
/// 							mappingFileName := _args[1].(string)
/// 							return fmt.Sprintf("gs://%v/%v", bucketName, mappingFileName), nil
/// 						}).(pulumi.StringOutput),
/// 						ImportUriPrefix: bucket.Name.ApplyT(func(name string) (string, error) {
/// 							return fmt.Sprintf("gs://%v", name), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 					Description: pulumi.String("example description for mapping configuration"),
/// 				},
/// 				FhirStreamingSource: &healthcare.PipelineJobMappingPipelineJobFhirStreamingSourceArgs{
/// 					FhirStore: pulumi.All(dataset.ID(), sourceFhirstore.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						id := _args[0].(string)
/// 						name := _args[1].(string)
/// 						return fmt.Sprintf("%v/fhirStores/%v", id, name), nil
/// 					}).(pulumi.StringOutput),
/// 					Description: pulumi.String("example description for streaming fhirstore"),
/// 				},
/// 				FhirStoreDestination: pulumi.All(dataset.ID(), destFhirstore.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 					id := _args[0].(string)
/// 					name := _args[1].(string)
/// 					return fmt.Sprintf("%v/fhirStores/%v", id, name), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBucketIAMMember(ctx, "hsa", &storage.BucketIAMMemberArgs{
/// 			Bucket: bucket.Name,
/// 			Role:   pulumi.String("roles/storage.objectUser"),
/// 			Member: pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-healthcare.iam.gserviceaccount.com", project.Number),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.healthcare.Dataset;
/// import com.pulumi.gcp.healthcare.DatasetArgs;
/// import com.pulumi.gcp.healthcare.FhirStore;
/// import com.pulumi.gcp.healthcare.FhirStoreArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.healthcare.PipelineJob;
/// import com.pulumi.gcp.healthcare.PipelineJobArgs;
/// import com.pulumi.gcp.healthcare.inputs.PipelineJobMappingPipelineJobArgs;
/// import com.pulumi.gcp.healthcare.inputs.PipelineJobMappingPipelineJobMappingConfigArgs;
/// import com.pulumi.gcp.healthcare.inputs.PipelineJobMappingPipelineJobMappingConfigWhistleConfigSourceArgs;
/// import com.pulumi.gcp.healthcare.inputs.PipelineJobMappingPipelineJobFhirStreamingSourceArgs;
/// import com.pulumi.gcp.storage.BucketIAMMember;
/// import com.pulumi.gcp.storage.BucketIAMMemberArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .name("example_dataset")
///             .location("us-central1")
///             .build());
///
///         var sourceFhirstore = new FhirStore("sourceFhirstore", FhirStoreArgs.builder()
///             .name("source_fhir_store")
///             .dataset(dataset.id())
///             .version("R4")
///             .enableUpdateCreate(true)
///             .disableReferentialIntegrity(true)
///             .build());
///
///         var destFhirstore = new FhirStore("destFhirstore", FhirStoreArgs.builder()
///             .name("dest_fhir_store")
///             .dataset(dataset.id())
///             .version("R4")
///             .enableUpdateCreate(true)
///             .disableReferentialIntegrity(true)
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("example_bucket_name")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var mappingFile = new BucketObject("mappingFile", BucketObjectArgs.builder()
///             .name("mapping.wstl")
///             .content(" ")
///             .bucket(bucket.name())
///             .build());
///
///         var example_mapping_pipeline = new PipelineJob("example-mapping-pipeline", PipelineJobArgs.builder()
///             .name("example_mapping_pipeline_job")
///             .location("us-central1")
///             .dataset(dataset.id())
///             .disableLineage(true)
///             .labels(Map.of("example_label_key", "example_label_value"))
///             .mappingPipelineJob(PipelineJobMappingPipelineJobArgs.builder()
///                 .mappingConfig(PipelineJobMappingPipelineJobMappingConfigArgs.builder()
///                     .whistleConfigSource(PipelineJobMappingPipelineJobMappingConfigWhistleConfigSourceArgs.builder()
///                         .uri(Output.tuple(bucket.name(), mappingFile.name()).applyValue(values -> {
///                             var bucketName = values.t1;
///                             var mappingFileName = values.t2;
///                             return String.format("gs://%s/%s", bucketName,mappingFileName);
///                         }))
///                         .importUriPrefix(bucket.name().applyValue(_name -> String.format("gs://%s", _name)))
///                         .build())
///                     .description("example description for mapping configuration")
///                     .build())
///                 .fhirStreamingSource(PipelineJobMappingPipelineJobFhirStreamingSourceArgs.builder()
///                     .fhirStore(Output.tuple(dataset.id(), sourceFhirstore.name()).applyValue(values -> {
///                         var id = values.t1;
///                         var name = values.t2;
///                         return String.format("%s/fhirStores/%s", id,name);
///                     }))
///                     .description("example description for streaming fhirstore")
///                     .build())
///                 .fhirStoreDestination(Output.tuple(dataset.id(), destFhirstore.name()).applyValue(values -> {
///                     var id = values.t1;
///                     var name = values.t2;
///                     return String.format("%s/fhirStores/%s", id,name);
///                 }))
///                 .build())
///             .build());
///
///         var hsa = new BucketIAMMember("hsa", BucketIAMMemberArgs.builder()
///             .bucket(bucket.name())
///             .role("roles/storage.objectUser")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-healthcare.iam.gserviceaccount.com", project.number()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-mapping-pipeline:
///     type: gcp:healthcare:PipelineJob
///     properties:
///       name: example_mapping_pipeline_job
///       location: us-central1
///       dataset: ${dataset.id}
///       disableLineage: true
///       labels:
///         example_label_key: example_label_value
///       mappingPipelineJob:
///         mappingConfig:
///           whistleConfigSource:
///             uri: gs://${bucket.name}/${mappingFile.name}
///             importUriPrefix: gs://${bucket.name}
///           description: example description for mapping configuration
///         fhirStreamingSource:
///           fhirStore: ${dataset.id}/fhirStores/${sourceFhirstore.name}
///           description: example description for streaming fhirstore
///         fhirStoreDestination: ${dataset.id}/fhirStores/${destFhirstore.name}
///   dataset:
///     type: gcp:healthcare:Dataset
///     properties:
///       name: example_dataset
///       location: us-central1
///   sourceFhirstore:
///     type: gcp:healthcare:FhirStore
///     name: source_fhirstore
///     properties:
///       name: source_fhir_store
///       dataset: ${dataset.id}
///       version: R4
///       enableUpdateCreate: true
///       disableReferentialIntegrity: true
///   destFhirstore:
///     type: gcp:healthcare:FhirStore
///     name: dest_fhirstore
///     properties:
///       name: dest_fhir_store
///       dataset: ${dataset.id}
///       version: R4
///       enableUpdateCreate: true
///       disableReferentialIntegrity: true
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: example_bucket_name
///       location: us-central1
///       uniformBucketLevelAccess: true
///   mappingFile:
///     type: gcp:storage:BucketObject
///     name: mapping_file
///     properties:
///       name: mapping.wstl
///       content: ' '
///       bucket: ${bucket.name}
///   hsa:
///     type: gcp:storage:BucketIAMMember
///     properties:
///       bucket: ${bucket.name}
///       role: roles/storage.objectUser
///       member: serviceAccount:service-${project.number}@gcp-sa-healthcare.iam.gserviceaccount.com
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Healthcare Pipeline Job Mapping Recon Dest
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const dataset = new gcp.healthcare.Dataset("dataset", {
///     name: "example_dataset",
///     location: "us-central1",
/// });
/// const destFhirstore = new gcp.healthcare.FhirStore("dest_fhirstore", {
///     name: "dest_fhir_store",
///     dataset: dataset.id,
///     version: "R4",
///     enableUpdateCreate: true,
///     disableReferentialIntegrity: true,
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "example_bucket_name",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
/// });
/// const mergeFile = new gcp.storage.BucketObject("merge_file", {
///     name: "merge.wstl",
///     content: " ",
///     bucket: bucket.name,
/// });
/// const recon = new gcp.healthcare.PipelineJob("recon", {
///     name: "example_recon_pipeline_job",
///     location: "us-central1",
///     dataset: dataset.id,
///     disableLineage: true,
///     reconciliationPipelineJob: {
///         mergeConfig: {
///             description: "sample description for reconciliation rules",
///             whistleConfigSource: {
///                 uri: pulumi.interpolate`gs://${bucket.name}/${mergeFile.name}`,
///                 importUriPrefix: pulumi.interpolate`gs://${bucket.name}`,
///             },
///         },
///         matchingUriPrefix: pulumi.interpolate`gs://${bucket.name}`,
///         fhirStoreDestination: pulumi.interpolate`${dataset.id}/fhirStores/${destFhirstore.name}`,
///     },
/// });
/// const sourceFhirstore = new gcp.healthcare.FhirStore("source_fhirstore", {
///     name: "source_fhir_store",
///     dataset: dataset.id,
///     version: "R4",
///     enableUpdateCreate: true,
///     disableReferentialIntegrity: true,
/// });
/// const mappingFile = new gcp.storage.BucketObject("mapping_file", {
///     name: "mapping.wstl",
///     content: " ",
///     bucket: bucket.name,
/// });
/// const example_mapping_pipeline = new gcp.healthcare.PipelineJob("example-mapping-pipeline", {
///     name: "example_mapping_pipeline_job",
///     location: "us-central1",
///     dataset: dataset.id,
///     disableLineage: true,
///     labels: {
///         example_label_key: "example_label_value",
///     },
///     mappingPipelineJob: {
///         mappingConfig: {
///             whistleConfigSource: {
///                 uri: pulumi.interpolate`gs://${bucket.name}/${mappingFile.name}`,
///                 importUriPrefix: pulumi.interpolate`gs://${bucket.name}`,
///             },
///             description: "example description for mapping configuration",
///         },
///         fhirStreamingSource: {
///             fhirStore: pulumi.interpolate`${dataset.id}/fhirStores/${sourceFhirstore.name}`,
///             description: "example description for streaming fhirstore",
///         },
///         reconciliationDestination: true,
///     },
/// }, {
///     dependsOn: [recon],
/// });
/// const hsa = new gcp.storage.BucketIAMMember("hsa", {
///     bucket: bucket.name,
///     role: "roles/storage.objectUser",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-healthcare.iam.gserviceaccount.com`),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// dataset = gcp.healthcare.Dataset("dataset",
///     name="example_dataset",
///     location="us-central1")
/// dest_fhirstore = gcp.healthcare.FhirStore("dest_fhirstore",
///     name="dest_fhir_store",
///     dataset=dataset.id,
///     version="R4",
///     enable_update_create=True,
///     disable_referential_integrity=True)
/// bucket = gcp.storage.Bucket("bucket",
///     name="example_bucket_name",
///     location="us-central1",
///     uniform_bucket_level_access=True)
/// merge_file = gcp.storage.BucketObject("merge_file",
///     name="merge.wstl",
///     content=" ",
///     bucket=bucket.name)
/// recon = gcp.healthcare.PipelineJob("recon",
///     name="example_recon_pipeline_job",
///     location="us-central1",
///     dataset=dataset.id,
///     disable_lineage=True,
///     reconciliation_pipeline_job={
///         "merge_config": {
///             "description": "sample description for reconciliation rules",
///             "whistle_config_source": {
///                 "uri": pulumi.Output.all(
///                     bucketName=bucket.name,
///                     mergeFileName=merge_file.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucketName']}/{resolved_outputs['mergeFileName']}")
/// ,
///                 "import_uri_prefix": bucket.name.apply(lambda name: f"gs://{name}"),
///             },
///         },
///         "matching_uri_prefix": bucket.name.apply(lambda name: f"gs://{name}"),
///         "fhir_store_destination": pulumi.Output.all(
///             id=dataset.id,
///             name=dest_fhirstore.name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['id']}/fhirStores/{resolved_outputs['name']}")
/// ,
///     })
/// source_fhirstore = gcp.healthcare.FhirStore("source_fhirstore",
///     name="source_fhir_store",
///     dataset=dataset.id,
///     version="R4",
///     enable_update_create=True,
///     disable_referential_integrity=True)
/// mapping_file = gcp.storage.BucketObject("mapping_file",
///     name="mapping.wstl",
///     content=" ",
///     bucket=bucket.name)
/// example_mapping_pipeline = gcp.healthcare.PipelineJob("example-mapping-pipeline",
///     name="example_mapping_pipeline_job",
///     location="us-central1",
///     dataset=dataset.id,
///     disable_lineage=True,
///     labels={
///         "example_label_key": "example_label_value",
///     },
///     mapping_pipeline_job={
///         "mapping_config": {
///             "whistle_config_source": {
///                 "uri": pulumi.Output.all(
///                     bucketName=bucket.name,
///                     mappingFileName=mapping_file.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucketName']}/{resolved_outputs['mappingFileName']}")
/// ,
///                 "import_uri_prefix": bucket.name.apply(lambda name: f"gs://{name}"),
///             },
///             "description": "example description for mapping configuration",
///         },
///         "fhir_streaming_source": {
///             "fhir_store": pulumi.Output.all(
///                 id=dataset.id,
///                 name=source_fhirstore.name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['id']}/fhirStores/{resolved_outputs['name']}")
/// ,
///             "description": "example description for streaming fhirstore",
///         },
///         "reconciliation_destination": True,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[recon]))
/// hsa = gcp.storage.BucketIAMMember("hsa",
///     bucket=bucket.name,
///     role="roles/storage.objectUser",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-healthcare.iam.gserviceaccount.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var dataset = new Gcp.Healthcare.Dataset("dataset", new()
///     {
///         Name = "example_dataset",
///         Location = "us-central1",
///     });
///
///     var destFhirstore = new Gcp.Healthcare.FhirStore("dest_fhirstore", new()
///     {
///         Name = "dest_fhir_store",
///         Dataset = dataset.Id,
///         Version = "R4",
///         EnableUpdateCreate = true,
///         DisableReferentialIntegrity = true,
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "example_bucket_name",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///     });
///
///     var mergeFile = new Gcp.Storage.BucketObject("merge_file", new()
///     {
///         Name = "merge.wstl",
///         Content = " ",
///         Bucket = bucket.Name,
///     });
///
///     var recon = new Gcp.Healthcare.PipelineJob("recon", new()
///     {
///         Name = "example_recon_pipeline_job",
///         Location = "us-central1",
///         Dataset = dataset.Id,
///         DisableLineage = true,
///         ReconciliationPipelineJob = new Gcp.Healthcare.Inputs.PipelineJobReconciliationPipelineJobArgs
///         {
///             MergeConfig = new Gcp.Healthcare.Inputs.PipelineJobReconciliationPipelineJobMergeConfigArgs
///             {
///                 Description = "sample description for reconciliation rules",
///                 WhistleConfigSource = new Gcp.Healthcare.Inputs.PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSourceArgs
///                 {
///                     Uri = Output.Tuple(bucket.Name, mergeFile.Name).Apply(values =>
///                     {
///                         var bucketName = values.Item1;
///                         var mergeFileName = values.Item2;
///                         return $"gs://{bucketName}/{mergeFileName}";
///                     }),
///                     ImportUriPrefix = bucket.Name.Apply(name => $"gs://{name}"),
///                 },
///             },
///             MatchingUriPrefix = bucket.Name.Apply(name => $"gs://{name}"),
///             FhirStoreDestination = Output.Tuple(dataset.Id, destFhirstore.Name).Apply(values =>
///             {
///                 var id = values.Item1;
///                 var name = values.Item2;
///                 return $"{id}/fhirStores/{name}";
///             }),
///         },
///     });
///
///     var sourceFhirstore = new Gcp.Healthcare.FhirStore("source_fhirstore", new()
///     {
///         Name = "source_fhir_store",
///         Dataset = dataset.Id,
///         Version = "R4",
///         EnableUpdateCreate = true,
///         DisableReferentialIntegrity = true,
///     });
///
///     var mappingFile = new Gcp.Storage.BucketObject("mapping_file", new()
///     {
///         Name = "mapping.wstl",
///         Content = " ",
///         Bucket = bucket.Name,
///     });
///
///     var example_mapping_pipeline = new Gcp.Healthcare.PipelineJob("example-mapping-pipeline", new()
///     {
///         Name = "example_mapping_pipeline_job",
///         Location = "us-central1",
///         Dataset = dataset.Id,
///         DisableLineage = true,
///         Labels =
///         {
///             { "example_label_key", "example_label_value" },
///         },
///         MappingPipelineJob = new Gcp.Healthcare.Inputs.PipelineJobMappingPipelineJobArgs
///         {
///             MappingConfig = new Gcp.Healthcare.Inputs.PipelineJobMappingPipelineJobMappingConfigArgs
///             {
///                 WhistleConfigSource = new Gcp.Healthcare.Inputs.PipelineJobMappingPipelineJobMappingConfigWhistleConfigSourceArgs
///                 {
///                     Uri = Output.Tuple(bucket.Name, mappingFile.Name).Apply(values =>
///                     {
///                         var bucketName = values.Item1;
///                         var mappingFileName = values.Item2;
///                         return $"gs://{bucketName}/{mappingFileName}";
///                     }),
///                     ImportUriPrefix = bucket.Name.Apply(name => $"gs://{name}"),
///                 },
///                 Description = "example description for mapping configuration",
///             },
///             FhirStreamingSource = new Gcp.Healthcare.Inputs.PipelineJobMappingPipelineJobFhirStreamingSourceArgs
///             {
///                 FhirStore = Output.Tuple(dataset.Id, sourceFhirstore.Name).Apply(values =>
///                 {
///                     var id = values.Item1;
///                     var name = values.Item2;
///                     return $"{id}/fhirStores/{name}";
///                 }),
///                 Description = "example description for streaming fhirstore",
///             },
///             ReconciliationDestination = true,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             recon,
///         },
///     });
///
///     var hsa = new Gcp.Storage.BucketIAMMember("hsa", new()
///     {
///         Bucket = bucket.Name,
///         Role = "roles/storage.objectUser",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-healthcare.iam.gserviceaccount.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dataset, err := healthcare.NewDataset(ctx, "dataset", &healthcare.DatasetArgs{
/// 			Name:     pulumi.String("example_dataset"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destFhirstore, err := healthcare.NewFhirStore(ctx, "dest_fhirstore", &healthcare.FhirStoreArgs{
/// 			Name:                        pulumi.String("dest_fhir_store"),
/// 			Dataset:                     dataset.ID(),
/// 			Version:                     pulumi.String("R4"),
/// 			EnableUpdateCreate:          pulumi.Bool(true),
/// 			DisableReferentialIntegrity: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("example_bucket_name"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mergeFile, err := storage.NewBucketObject(ctx, "merge_file", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("merge.wstl"),
/// 			Content: pulumi.String(" "),
/// 			Bucket:  bucket.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		recon, err := healthcare.NewPipelineJob(ctx, "recon", &healthcare.PipelineJobArgs{
/// 			Name:           pulumi.String("example_recon_pipeline_job"),
/// 			Location:       pulumi.String("us-central1"),
/// 			Dataset:        dataset.ID(),
/// 			DisableLineage: pulumi.Bool(true),
/// 			ReconciliationPipelineJob: &healthcare.PipelineJobReconciliationPipelineJobArgs{
/// 				MergeConfig: &healthcare.PipelineJobReconciliationPipelineJobMergeConfigArgs{
/// 					Description: pulumi.String("sample description for reconciliation rules"),
/// 					WhistleConfigSource: &healthcare.PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSourceArgs{
/// 						Uri: pulumi.All(bucket.Name, mergeFile.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 							bucketName := _args[0].(string)
/// 							mergeFileName := _args[1].(string)
/// 							return fmt.Sprintf("gs://%v/%v", bucketName, mergeFileName), nil
/// 						}).(pulumi.StringOutput),
/// 						ImportUriPrefix: bucket.Name.ApplyT(func(name string) (string, error) {
/// 							return fmt.Sprintf("gs://%v", name), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 				MatchingUriPrefix: bucket.Name.ApplyT(func(name string) (string, error) {
/// 					return fmt.Sprintf("gs://%v", name), nil
/// 				}).(pulumi.StringOutput),
/// 				FhirStoreDestination: pulumi.All(dataset.ID(), destFhirstore.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 					id := _args[0].(string)
/// 					name := _args[1].(string)
/// 					return fmt.Sprintf("%v/fhirStores/%v", id, name), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourceFhirstore, err := healthcare.NewFhirStore(ctx, "source_fhirstore", &healthcare.FhirStoreArgs{
/// 			Name:                        pulumi.String("source_fhir_store"),
/// 			Dataset:                     dataset.ID(),
/// 			Version:                     pulumi.String("R4"),
/// 			EnableUpdateCreate:          pulumi.Bool(true),
/// 			DisableReferentialIntegrity: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mappingFile, err := storage.NewBucketObject(ctx, "mapping_file", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("mapping.wstl"),
/// 			Content: pulumi.String(" "),
/// 			Bucket:  bucket.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = healthcare.NewPipelineJob(ctx, "example-mapping-pipeline", &healthcare.PipelineJobArgs{
/// 			Name:           pulumi.String("example_mapping_pipeline_job"),
/// 			Location:       pulumi.String("us-central1"),
/// 			Dataset:        dataset.ID(),
/// 			DisableLineage: pulumi.Bool(true),
/// 			Labels: pulumi.StringMap{
/// 				"example_label_key": pulumi.String("example_label_value"),
/// 			},
/// 			MappingPipelineJob: &healthcare.PipelineJobMappingPipelineJobArgs{
/// 				MappingConfig: &healthcare.PipelineJobMappingPipelineJobMappingConfigArgs{
/// 					WhistleConfigSource: &healthcare.PipelineJobMappingPipelineJobMappingConfigWhistleConfigSourceArgs{
/// 						Uri: pulumi.All(bucket.Name, mappingFile.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 							bucketName := _args[0].(string)
/// 							mappingFileName := _args[1].(string)
/// 							return fmt.Sprintf("gs://%v/%v", bucketName, mappingFileName), nil
/// 						}).(pulumi.StringOutput),
/// 						ImportUriPrefix: bucket.Name.ApplyT(func(name string) (string, error) {
/// 							return fmt.Sprintf("gs://%v", name), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 					Description: pulumi.String("example description for mapping configuration"),
/// 				},
/// 				FhirStreamingSource: &healthcare.PipelineJobMappingPipelineJobFhirStreamingSourceArgs{
/// 					FhirStore: pulumi.All(dataset.ID(), sourceFhirstore.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						id := _args[0].(string)
/// 						name := _args[1].(string)
/// 						return fmt.Sprintf("%v/fhirStores/%v", id, name), nil
/// 					}).(pulumi.StringOutput),
/// 					Description: pulumi.String("example description for streaming fhirstore"),
/// 				},
/// 				ReconciliationDestination: pulumi.Bool(true),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			recon,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBucketIAMMember(ctx, "hsa", &storage.BucketIAMMemberArgs{
/// 			Bucket: bucket.Name,
/// 			Role:   pulumi.String("roles/storage.objectUser"),
/// 			Member: pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-healthcare.iam.gserviceaccount.com", project.Number),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.healthcare.Dataset;
/// import com.pulumi.gcp.healthcare.DatasetArgs;
/// import com.pulumi.gcp.healthcare.FhirStore;
/// import com.pulumi.gcp.healthcare.FhirStoreArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.healthcare.PipelineJob;
/// import com.pulumi.gcp.healthcare.PipelineJobArgs;
/// import com.pulumi.gcp.healthcare.inputs.PipelineJobReconciliationPipelineJobArgs;
/// import com.pulumi.gcp.healthcare.inputs.PipelineJobReconciliationPipelineJobMergeConfigArgs;
/// import com.pulumi.gcp.healthcare.inputs.PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSourceArgs;
/// import com.pulumi.gcp.healthcare.inputs.PipelineJobMappingPipelineJobArgs;
/// import com.pulumi.gcp.healthcare.inputs.PipelineJobMappingPipelineJobMappingConfigArgs;
/// import com.pulumi.gcp.healthcare.inputs.PipelineJobMappingPipelineJobMappingConfigWhistleConfigSourceArgs;
/// import com.pulumi.gcp.healthcare.inputs.PipelineJobMappingPipelineJobFhirStreamingSourceArgs;
/// import com.pulumi.gcp.storage.BucketIAMMember;
/// import com.pulumi.gcp.storage.BucketIAMMemberArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .name("example_dataset")
///             .location("us-central1")
///             .build());
///
///         var destFhirstore = new FhirStore("destFhirstore", FhirStoreArgs.builder()
///             .name("dest_fhir_store")
///             .dataset(dataset.id())
///             .version("R4")
///             .enableUpdateCreate(true)
///             .disableReferentialIntegrity(true)
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("example_bucket_name")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var mergeFile = new BucketObject("mergeFile", BucketObjectArgs.builder()
///             .name("merge.wstl")
///             .content(" ")
///             .bucket(bucket.name())
///             .build());
///
///         var recon = new PipelineJob("recon", PipelineJobArgs.builder()
///             .name("example_recon_pipeline_job")
///             .location("us-central1")
///             .dataset(dataset.id())
///             .disableLineage(true)
///             .reconciliationPipelineJob(PipelineJobReconciliationPipelineJobArgs.builder()
///                 .mergeConfig(PipelineJobReconciliationPipelineJobMergeConfigArgs.builder()
///                     .description("sample description for reconciliation rules")
///                     .whistleConfigSource(PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSourceArgs.builder()
///                         .uri(Output.tuple(bucket.name(), mergeFile.name()).applyValue(values -> {
///                             var bucketName = values.t1;
///                             var mergeFileName = values.t2;
///                             return String.format("gs://%s/%s", bucketName,mergeFileName);
///                         }))
///                         .importUriPrefix(bucket.name().applyValue(_name -> String.format("gs://%s", _name)))
///                         .build())
///                     .build())
///                 .matchingUriPrefix(bucket.name().applyValue(_name -> String.format("gs://%s", _name)))
///                 .fhirStoreDestination(Output.tuple(dataset.id(), destFhirstore.name()).applyValue(values -> {
///                     var id = values.t1;
///                     var name = values.t2;
///                     return String.format("%s/fhirStores/%s", id,name);
///                 }))
///                 .build())
///             .build());
///
///         var sourceFhirstore = new FhirStore("sourceFhirstore", FhirStoreArgs.builder()
///             .name("source_fhir_store")
///             .dataset(dataset.id())
///             .version("R4")
///             .enableUpdateCreate(true)
///             .disableReferentialIntegrity(true)
///             .build());
///
///         var mappingFile = new BucketObject("mappingFile", BucketObjectArgs.builder()
///             .name("mapping.wstl")
///             .content(" ")
///             .bucket(bucket.name())
///             .build());
///
///         var example_mapping_pipeline = new PipelineJob("example-mapping-pipeline", PipelineJobArgs.builder()
///             .name("example_mapping_pipeline_job")
///             .location("us-central1")
///             .dataset(dataset.id())
///             .disableLineage(true)
///             .labels(Map.of("example_label_key", "example_label_value"))
///             .mappingPipelineJob(PipelineJobMappingPipelineJobArgs.builder()
///                 .mappingConfig(PipelineJobMappingPipelineJobMappingConfigArgs.builder()
///                     .whistleConfigSource(PipelineJobMappingPipelineJobMappingConfigWhistleConfigSourceArgs.builder()
///                         .uri(Output.tuple(bucket.name(), mappingFile.name()).applyValue(values -> {
///                             var bucketName = values.t1;
///                             var mappingFileName = values.t2;
///                             return String.format("gs://%s/%s", bucketName,mappingFileName);
///                         }))
///                         .importUriPrefix(bucket.name().applyValue(_name -> String.format("gs://%s", _name)))
///                         .build())
///                     .description("example description for mapping configuration")
///                     .build())
///                 .fhirStreamingSource(PipelineJobMappingPipelineJobFhirStreamingSourceArgs.builder()
///                     .fhirStore(Output.tuple(dataset.id(), sourceFhirstore.name()).applyValue(values -> {
///                         var id = values.t1;
///                         var name = values.t2;
///                         return String.format("%s/fhirStores/%s", id,name);
///                     }))
///                     .description("example description for streaming fhirstore")
///                     .build())
///                 .reconciliationDestination(true)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(recon)
///                 .build());
///
///         var hsa = new BucketIAMMember("hsa", BucketIAMMemberArgs.builder()
///             .bucket(bucket.name())
///             .role("roles/storage.objectUser")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-healthcare.iam.gserviceaccount.com", project.number()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   recon:
///     type: gcp:healthcare:PipelineJob
///     properties:
///       name: example_recon_pipeline_job
///       location: us-central1
///       dataset: ${dataset.id}
///       disableLineage: true
///       reconciliationPipelineJob:
///         mergeConfig:
///           description: sample description for reconciliation rules
///           whistleConfigSource:
///             uri: gs://${bucket.name}/${mergeFile.name}
///             importUriPrefix: gs://${bucket.name}
///         matchingUriPrefix: gs://${bucket.name}
///         fhirStoreDestination: ${dataset.id}/fhirStores/${destFhirstore.name}
///   example-mapping-pipeline:
///     type: gcp:healthcare:PipelineJob
///     properties:
///       name: example_mapping_pipeline_job
///       location: us-central1
///       dataset: ${dataset.id}
///       disableLineage: true
///       labels:
///         example_label_key: example_label_value
///       mappingPipelineJob:
///         mappingConfig:
///           whistleConfigSource:
///             uri: gs://${bucket.name}/${mappingFile.name}
///             importUriPrefix: gs://${bucket.name}
///           description: example description for mapping configuration
///         fhirStreamingSource:
///           fhirStore: ${dataset.id}/fhirStores/${sourceFhirstore.name}
///           description: example description for streaming fhirstore
///         reconciliationDestination: true
///     options:
///       dependsOn:
///         - ${recon}
///   dataset:
///     type: gcp:healthcare:Dataset
///     properties:
///       name: example_dataset
///       location: us-central1
///   sourceFhirstore:
///     type: gcp:healthcare:FhirStore
///     name: source_fhirstore
///     properties:
///       name: source_fhir_store
///       dataset: ${dataset.id}
///       version: R4
///       enableUpdateCreate: true
///       disableReferentialIntegrity: true
///   destFhirstore:
///     type: gcp:healthcare:FhirStore
///     name: dest_fhirstore
///     properties:
///       name: dest_fhir_store
///       dataset: ${dataset.id}
///       version: R4
///       enableUpdateCreate: true
///       disableReferentialIntegrity: true
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: example_bucket_name
///       location: us-central1
///       uniformBucketLevelAccess: true
///   mappingFile:
///     type: gcp:storage:BucketObject
///     name: mapping_file
///     properties:
///       name: mapping.wstl
///       content: ' '
///       bucket: ${bucket.name}
///   mergeFile:
///     type: gcp:storage:BucketObject
///     name: merge_file
///     properties:
///       name: merge.wstl
///       content: ' '
///       bucket: ${bucket.name}
///   hsa:
///     type: gcp:storage:BucketIAMMember
///     properties:
///       bucket: ${bucket.name}
///       role: roles/storage.objectUser
///       member: serviceAccount:service-${project.number}@gcp-sa-healthcare.iam.gserviceaccount.com
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// PipelineJob can be imported using any of these accepted formats:
///
/// * `{{dataset}}/pipelineJobs/{{name}}`
///
/// * `{{dataset}}/pipelineJobs?pipelineJobId={{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, PipelineJob can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:healthcare/pipelineJob:PipelineJob default {{dataset}}/pipelineJobs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:healthcare/pipelineJob:PipelineJob default {{dataset}}/pipelineJobs?pipelineJobId={{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:healthcare/pipelineJob:PipelineJob default {{name}}
/// ```
class PipelineJob extends pulumi.CustomResource {
  /// Specifies the backfill configuration.
  /// Structure is documented below.
  late final pulumi.Output<PipelineJobBackfillPipelineJob?> backfillPipelineJob;
  /// Healthcare Dataset under which the Pipeline Job is to run
  late final pulumi.Output<String> dataset;
  /// If true, disables writing lineage for the pipeline.
  late final pulumi.Output<bool?> disableLineage;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// User-supplied key-value pairs used to organize Pipeline Jobs.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of
  /// maximum 128 bytes, and must conform to the following PCRE regular expression:
  /// [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values are optional, must be between 1 and 63 characters long, have a
  /// UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE
  /// regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be associated with a given pipeline.
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Location where the Pipeline Job is to run
  late final pulumi.Output<String> location;
  /// Specifies mapping configuration.
  /// Structure is documented below.
  late final pulumi.Output<PipelineJobMappingPipelineJob?> mappingPipelineJob;
  /// Specifies the name of the pipeline job. This field is user-assigned.
  late final pulumi.Output<String> name;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Specifies reconciliation configuration.
  /// Structure is documented below.
  late final pulumi.Output<PipelineJobReconciliationPipelineJob?> reconciliationPipelineJob;
  /// The fully qualified name of this dataset
  late final pulumi.Output<String> selfLink;

  /// Creates a new [PipelineJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PipelineJob]. {@macro pulumi_healthcare_pipeline_job_pipeline_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PipelineJob(
    String name, {
    PipelineJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/pipelineJob:PipelineJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backfillPipelineJob = registerOutput<PipelineJobBackfillPipelineJob?>('backfillPipelineJob');
    this.dataset = registerOutput<String>('dataset');
    this.disableLineage = registerOutput<bool?>('disableLineage');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.mappingPipelineJob = registerOutput<PipelineJobMappingPipelineJob?>('mappingPipelineJob');
    this.name = registerOutput<String>('name');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciliationPipelineJob = registerOutput<PipelineJobReconciliationPipelineJob?>('reconciliationPipelineJob');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
