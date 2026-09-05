import 'package:pulumi/pulumi.dart' as pulumi;
import 'scraper_args.dart';
import 'scraper_destination.dart';
import 'scraper_exporter.dart';
import 'scraper_role_configuration.dart';
import 'scraper_source.dart';
import 'scraper_state.dart';
import 'scraper_timeouts.dart';

/// &gt; **Note:** If you change a Scraper's source (EKS cluster or VPC configuration), Terraform
/// will delete the current Scraper and create a new one.
///
/// Provides an Amazon Managed Service for Prometheus fully managed collector
/// (scraper).
///
/// Read more in the [Amazon Managed Service for Prometheus user guide](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector.html).
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
/// const example = new aws.amp.Scraper("example", {
///     source: {
///         eks: {
///             clusterArn: exampleAwsEksCluster.arn,
///             subnetIds: exampleAwsEksCluster.vpcConfig[0].subnetIds,
///         },
///     },
///     destination: {
///         amp: {
///             workspaceArn: exampleAwsPrometheusWorkspace.arn,
///         },
///     },
///     scrapeConfiguration: `global:
///   scrape_interval: 30s
/// scrape_configs:
///   # pod metrics
///   - job_name: pod_exporter
///     kubernetes_sd_configs:
///       - role: pod
///   # container metrics
///   - job_name: cadvisor
///     scheme: https
///     authorization:
///       credentials_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     kubernetes_sd_configs:
///       - role: node
///     relabel_configs:
///       - action: labelmap
///         regex: __meta_kubernetes_node_label_(.+)
///       - replacement: kubernetes.default.svc:443
///         target_label: __address__
///       - source_labels: [__meta_kubernetes_node_name]
///         regex: (.+)
///         target_label: __metrics_path__
///         replacement: /api/v1/nodes/1/proxy/metrics/cadvisor
///   # apiserver metrics
///   - bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     job_name: kubernetes-apiservers
///     kubernetes_sd_configs:
///     - role: endpoints
///     relabel_configs:
///     - action: keep
///       regex: default;kubernetes;https
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_service_name
///       - __meta_kubernetes_endpoint_port_name
///     scheme: https
///   # kube proxy metrics
///   - job_name: kube-proxy
///     honor_labels: true
///     kubernetes_sd_configs:
///     - role: pod
///     relabel_configs:
///     - action: keep
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_pod_name
///       separator: '/'
///       regex: 'kube-system/kube-proxy.+'
///     - source_labels:
///       - __address__
///       action: replace
///       target_label: __address__
///       regex: (.+?)(\\\\\\\\:\\\\\\\\d+)?
///       replacement: 1:10249
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Scraper("example",
///     source={
///         "eks": {
///             "cluster_arn": example_aws_eks_cluster["arn"],
///             "subnet_ids": example_aws_eks_cluster["vpcConfig"][0]["subnetIds"],
///         },
///     },
///     destination={
///         "amp": {
///             "workspace_arn": example_aws_prometheus_workspace["arn"],
///         },
///     },
///     scrape_configuration="""global:
///   scrape_interval: 30s
/// scrape_configs:
///   # pod metrics
///   - job_name: pod_exporter
///     kubernetes_sd_configs:
///       - role: pod
///   # container metrics
///   - job_name: cadvisor
///     scheme: https
///     authorization:
///       credentials_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     kubernetes_sd_configs:
///       - role: node
///     relabel_configs:
///       - action: labelmap
///         regex: __meta_kubernetes_node_label_(.+)
///       - replacement: kubernetes.default.svc:443
///         target_label: __address__
///       - source_labels: [__meta_kubernetes_node_name]
///         regex: (.+)
///         target_label: __metrics_path__
///         replacement: /api/v1/nodes/$1/proxy/metrics/cadvisor
///   # apiserver metrics
///   - bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     job_name: kubernetes-apiservers
///     kubernetes_sd_configs:
///     - role: endpoints
///     relabel_configs:
///     - action: keep
///       regex: default;kubernetes;https
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_service_name
///       - __meta_kubernetes_endpoint_port_name
///     scheme: https
///   # kube proxy metrics
///   - job_name: kube-proxy
///     honor_labels: true
///     kubernetes_sd_configs:
///     - role: pod
///     relabel_configs:
///     - action: keep
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_pod_name
///       separator: '/'
///       regex: 'kube-system/kube-proxy.+'
///     - source_labels:
///       - __address__
///       action: replace
///       target_label: __address__
///       regex: (.+?)(\\\\:\\\\d+)?
///       replacement: $1:10249
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
///     var example = new Aws.Amp.Scraper("example", new()
///     {
///         Source = new Aws.Amp.Inputs.ScraperSourceArgs
///         {
///             Eks = new Aws.Amp.Inputs.ScraperSourceEksArgs
///             {
///                 ClusterArn = exampleAwsEksCluster.Arn,
///                 SubnetIds = exampleAwsEksCluster.VpcConfig[0].SubnetIds,
///             },
///         },
///         Destination = new Aws.Amp.Inputs.ScraperDestinationArgs
///         {
///             Amp = new Aws.Amp.Inputs.ScraperDestinationAmpArgs
///             {
///                 WorkspaceArn = exampleAwsPrometheusWorkspace.Arn,
///             },
///         },
///         ScrapeConfiguration = @"global:
///   scrape_interval: 30s
/// scrape_configs:
///   # pod metrics
///   - job_name: pod_exporter
///     kubernetes_sd_configs:
///       - role: pod
///   # container metrics
///   - job_name: cadvisor
///     scheme: https
///     authorization:
///       credentials_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     kubernetes_sd_configs:
///       - role: node
///     relabel_configs:
///       - action: labelmap
///         regex: __meta_kubernetes_node_label_(.+)
///       - replacement: kubernetes.default.svc:443
///         target_label: __address__
///       - source_labels: [__meta_kubernetes_node_name]
///         regex: (.+)
///         target_label: __metrics_path__
///         replacement: /api/v1/nodes/$1/proxy/metrics/cadvisor
///   # apiserver metrics
///   - bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     job_name: kubernetes-apiservers
///     kubernetes_sd_configs:
///     - role: endpoints
///     relabel_configs:
///     - action: keep
///       regex: default;kubernetes;https
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_service_name
///       - __meta_kubernetes_endpoint_port_name
///     scheme: https
///   # kube proxy metrics
///   - job_name: kube-proxy
///     honor_labels: true
///     kubernetes_sd_configs:
///     - role: pod
///     relabel_configs:
///     - action: keep
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_pod_name
///       separator: '/'
///       regex: 'kube-system/kube-proxy.+'
///     - source_labels:
///       - __address__
///       action: replace
///       target_label: __address__
///       regex: (.+?)(\\\\:\\\\d+)?
///       replacement: $1:10249
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amp.NewScraper(ctx, "example", &amp.ScraperArgs{
/// 			Source: &amp.ScraperSourceArgs{
/// 				Eks: &amp.ScraperSourceEksArgs{
/// 					ClusterArn: pulumi.Any(exampleAwsEksCluster.Arn),
/// 					SubnetIds:  pulumi.Any(exampleAwsEksCluster.VpcConfig[0].SubnetIds),
/// 				},
/// 			},
/// 			Destination: &amp.ScraperDestinationArgs{
/// 				Amp: &amp.ScraperDestinationAmpArgs{
/// 					WorkspaceArn: pulumi.Any(exampleAwsPrometheusWorkspace.Arn),
/// 				},
/// 			},
/// 			ScrapeConfiguration: pulumi.String(`global:
///   scrape_interval: 30s
/// scrape_configs:
///   # pod metrics
///   - job_name: pod_exporter
///     kubernetes_sd_configs:
///       - role: pod
///   # container metrics
///   - job_name: cadvisor
///     scheme: https
///     authorization:
///       credentials_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     kubernetes_sd_configs:
///       - role: node
///     relabel_configs:
///       - action: labelmap
///         regex: __meta_kubernetes_node_label_(.+)
///       - replacement: kubernetes.default.svc:443
///         target_label: __address__
///       - source_labels: [__meta_kubernetes_node_name]
///         regex: (.+)
///         target_label: __metrics_path__
///         replacement: /api/v1/nodes/$1/proxy/metrics/cadvisor
///   # apiserver metrics
///   - bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     job_name: kubernetes-apiservers
///     kubernetes_sd_configs:
///     - role: endpoints
///     relabel_configs:
///     - action: keep
///       regex: default;kubernetes;https
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_service_name
///       - __meta_kubernetes_endpoint_port_name
///     scheme: https
///   # kube proxy metrics
///   - job_name: kube-proxy
///     honor_labels: true
///     kubernetes_sd_configs:
///     - role: pod
///     relabel_configs:
///     - action: keep
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_pod_name
///       separator: '/'
///       regex: 'kube-system/kube-proxy.+'
///     - source_labels:
///       - __address__
///       action: replace
///       target_label: __address__
///       regex: (.+?)(\\\\:\\\\d+)?
///       replacement: $1:10249
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
/// resource "aws_amp_scraper" "example" {
///   source = {
///     eks = {
///       cluster_arn = exampleAwsEksCluster.arn
///       subnet_ids  = exampleAwsEksCluster.vpcConfig[0].subnetIds
///     }
///   }
///   destination = {
///     amp = {
///       workspace_arn = exampleAwsPrometheusWorkspace.arn
///     }
///   }
///   scrape_configuration = "global:\n  scrape_interval: 30s\nscrape_configs:\n  # pod metrics\n  - job_name: pod_exporter\n    kubernetes_sd_configs:\n      - role: pod\n  # container metrics\n  - job_name: cadvisor\n    scheme: https\n    authorization:\n      credentials_file: /var/run/secrets/kubernetes.io/serviceaccount/token\n    kubernetes_sd_configs:\n      - role: node\n    relabel_configs:\n      - action: labelmap\n        regex: __meta_kubernetes_node_label_(.+)\n      - replacement: kubernetes.default.svc:443\n        target_label: __address__\n      - source_labels: [__meta_kubernetes_node_name]\n        regex: (.+)\n        target_label: __metrics_path__\n        replacement: /api/v1/nodes/$1/proxy/metrics/cadvisor\n  # apiserver metrics\n  - bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token\n    job_name: kubernetes-apiservers\n    kubernetes_sd_configs:\n    - role: endpoints\n    relabel_configs:\n    - action: keep\n      regex: default;kubernetes;https\n      source_labels:\n      - __meta_kubernetes_namespace\n      - __meta_kubernetes_service_name\n      - __meta_kubernetes_endpoint_port_name\n    scheme: https\n  # kube proxy metrics\n  - job_name: kube-proxy\n    honor_labels: true\n    kubernetes_sd_configs:\n    - role: pod\n    relabel_configs:\n    - action: keep\n      source_labels:\n      - __meta_kubernetes_namespace\n      - __meta_kubernetes_pod_name\n      separator: '/'\n      regex: 'kube-system/kube-proxy.+'\n    - source_labels:\n      - __address__\n      action: replace\n      target_label: __address__\n      regex: (.+?)(\\\\\\\\:\\\\\\\\d+)?\n      replacement: $1:10249\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.amp.Scraper;
/// import com.pulumi.aws.amp.ScraperArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceEksArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationAmpArgs;
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
///         var example = new Scraper("example", ScraperArgs.builder()
///             .source(ScraperSourceArgs.builder()
///                 .eks(ScraperSourceEksArgs.builder()
///                     .clusterArn(exampleAwsEksCluster.arn())
///                     .subnetIds(exampleAwsEksCluster.vpcConfig()[0].subnetIds())
///                     .build())
///                 .build())
///             .destination(ScraperDestinationArgs.builder()
///                 .amp(ScraperDestinationAmpArgs.builder()
///                     .workspaceArn(exampleAwsPrometheusWorkspace.arn())
///                     .build())
///                 .build())
///             .scrapeConfiguration("""
/// global:
///   scrape_interval: 30s
/// scrape_configs:
///   # pod metrics
///   - job_name: pod_exporter
///     kubernetes_sd_configs:
///       - role: pod
///   # container metrics
///   - job_name: cadvisor
///     scheme: https
///     authorization:
///       credentials_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     kubernetes_sd_configs:
///       - role: node
///     relabel_configs:
///       - action: labelmap
///         regex: __meta_kubernetes_node_label_(.+)
///       - replacement: kubernetes.default.svc:443
///         target_label: __address__
///       - source_labels: [__meta_kubernetes_node_name]
///         regex: (.+)
///         target_label: __metrics_path__
///         replacement: /api/v1/nodes/$1/proxy/metrics/cadvisor
///   # apiserver metrics
///   - bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     job_name: kubernetes-apiservers
///     kubernetes_sd_configs:
///     - role: endpoints
///     relabel_configs:
///     - action: keep
///       regex: default;kubernetes;https
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_service_name
///       - __meta_kubernetes_endpoint_port_name
///     scheme: https
///   # kube proxy metrics
///   - job_name: kube-proxy
///     honor_labels: true
///     kubernetes_sd_configs:
///     - role: pod
///     relabel_configs:
///     - action: keep
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_pod_name
///       separator: '/'
///       regex: 'kube-system/kube-proxy.+'
///     - source_labels:
///       - __address__
///       action: replace
///       target_label: __address__
///       regex: (.+?)(\\\\:\\\\d+)?
///       replacement: $1:10249
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:Scraper
///     properties:
///       source:
///         eks:
///           clusterArn: ${exampleAwsEksCluster.arn}
///           subnetIds: ${exampleAwsEksCluster.vpcConfig[0].subnetIds}
///       destination:
///         amp:
///           workspaceArn: ${exampleAwsPrometheusWorkspace.arn}
///       scrapeConfiguration: |
///         global:
///           scrape_interval: 30s
///         scrape_configs:
///           # pod metrics
///           - job_name: pod_exporter
///             kubernetes_sd_configs:
///               - role: pod
///           # container metrics
///           - job_name: cadvisor
///             scheme: https
///             authorization:
///               credentials_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///             kubernetes_sd_configs:
///               - role: node
///             relabel_configs:
///               - action: labelmap
///                 regex: __meta_kubernetes_node_label_(.+)
///               - replacement: kubernetes.default.svc:443
///                 target_label: __address__
///               - source_labels: [__meta_kubernetes_node_name]
///                 regex: (.+)
///                 target_label: __metrics_path__
///                 replacement: /api/v1/nodes/$1/proxy/metrics/cadvisor
///           # apiserver metrics
///           - bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///             job_name: kubernetes-apiservers
///             kubernetes_sd_configs:
///             - role: endpoints
///             relabel_configs:
///             - action: keep
///               regex: default;kubernetes;https
///               source_labels:
///               - __meta_kubernetes_namespace
///               - __meta_kubernetes_service_name
///               - __meta_kubernetes_endpoint_port_name
///             scheme: https
///           # kube proxy metrics
///           - job_name: kube-proxy
///             honor_labels: true
///             kubernetes_sd_configs:
///             - role: pod
///             relabel_configs:
///             - action: keep
///               source_labels:
///               - __meta_kubernetes_namespace
///               - __meta_kubernetes_pod_name
///               separator: '/'
///               regex: 'kube-system/kube-proxy.+'
///             - source_labels:
///               - __address__
///               action: replace
///               target_label: __address__
///               regex: (.+?)(\\\\:\\\\d+)?
///               replacement: $1:10249
/// ```
///
///
/// ### CloudWatch Destination
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amp.Scraper("example", {
///     source: {
///         eks: {
///             clusterArn: exampleAwsEksCluster.arn,
///             subnetIds: exampleAwsEksCluster.vpcConfig[0].subnetIds,
///         },
///     },
///     destination: {
///         cloudwatch: {
///             datasetArn: "arn:aws:cloudwatch:us-west-2:123456789012:dataset/default",
///         },
///     },
///     scrapeConfiguration: `global:
///   scrape_interval: 30s
/// scrape_configs:
///   - job_name: pod_exporter
///     kubernetes_sd_configs:
///       - role: pod
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Scraper("example",
///     source={
///         "eks": {
///             "cluster_arn": example_aws_eks_cluster["arn"],
///             "subnet_ids": example_aws_eks_cluster["vpcConfig"][0]["subnetIds"],
///         },
///     },
///     destination={
///         "cloudwatch": {
///             "dataset_arn": "arn:aws:cloudwatch:us-west-2:123456789012:dataset/default",
///         },
///     },
///     scrape_configuration="""global:
///   scrape_interval: 30s
/// scrape_configs:
///   - job_name: pod_exporter
///     kubernetes_sd_configs:
///       - role: pod
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
///     var example = new Aws.Amp.Scraper("example", new()
///     {
///         Source = new Aws.Amp.Inputs.ScraperSourceArgs
///         {
///             Eks = new Aws.Amp.Inputs.ScraperSourceEksArgs
///             {
///                 ClusterArn = exampleAwsEksCluster.Arn,
///                 SubnetIds = exampleAwsEksCluster.VpcConfig[0].SubnetIds,
///             },
///         },
///         Destination = new Aws.Amp.Inputs.ScraperDestinationArgs
///         {
///             Cloudwatch = new Aws.Amp.Inputs.ScraperDestinationCloudwatchArgs
///             {
///                 DatasetArn = "arn:aws:cloudwatch:us-west-2:123456789012:dataset/default",
///             },
///         },
///         ScrapeConfiguration = @"global:
///   scrape_interval: 30s
/// scrape_configs:
///   - job_name: pod_exporter
///     kubernetes_sd_configs:
///       - role: pod
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amp.NewScraper(ctx, "example", &amp.ScraperArgs{
/// 			Source: &amp.ScraperSourceArgs{
/// 				Eks: &amp.ScraperSourceEksArgs{
/// 					ClusterArn: pulumi.Any(exampleAwsEksCluster.Arn),
/// 					SubnetIds:  pulumi.Any(exampleAwsEksCluster.VpcConfig[0].SubnetIds),
/// 				},
/// 			},
/// 			Destination: &amp.ScraperDestinationArgs{
/// 				Cloudwatch: &amp.ScraperDestinationCloudwatchArgs{
/// 					DatasetArn: pulumi.String("arn:aws:cloudwatch:us-west-2:123456789012:dataset/default"),
/// 				},
/// 			},
/// 			ScrapeConfiguration: pulumi.String(`global:
///   scrape_interval: 30s
/// scrape_configs:
///   - job_name: pod_exporter
///     kubernetes_sd_configs:
///       - role: pod
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
/// resource "aws_amp_scraper" "example" {
///   source = {
///     eks = {
///       cluster_arn = exampleAwsEksCluster.arn
///       subnet_ids  = exampleAwsEksCluster.vpcConfig[0].subnetIds
///     }
///   }
///   destination = {
///     cloudwatch = {
///       dataset_arn = "arn:aws:cloudwatch:us-west-2:123456789012:dataset/default"
///     }
///   }
///   scrape_configuration = "global:\n  scrape_interval: 30s\nscrape_configs:\n  - job_name: pod_exporter\n    kubernetes_sd_configs:\n      - role: pod\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.amp.Scraper;
/// import com.pulumi.aws.amp.ScraperArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceEksArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationCloudwatchArgs;
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
///         var example = new Scraper("example", ScraperArgs.builder()
///             .source(ScraperSourceArgs.builder()
///                 .eks(ScraperSourceEksArgs.builder()
///                     .clusterArn(exampleAwsEksCluster.arn())
///                     .subnetIds(exampleAwsEksCluster.vpcConfig()[0].subnetIds())
///                     .build())
///                 .build())
///             .destination(ScraperDestinationArgs.builder()
///                 .cloudwatch(ScraperDestinationCloudwatchArgs.builder()
///                     .datasetArn("arn:aws:cloudwatch:us-west-2:123456789012:dataset/default")
///                     .build())
///                 .build())
///             .scrapeConfiguration("""
/// global:
///   scrape_interval: 30s
/// scrape_configs:
///   - job_name: pod_exporter
///     kubernetes_sd_configs:
///       - role: pod
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:Scraper
///     properties:
///       source:
///         eks:
///           clusterArn: ${exampleAwsEksCluster.arn}
///           subnetIds: ${exampleAwsEksCluster.vpcConfig[0].subnetIds}
///       destination:
///         cloudwatch:
///           datasetArn: arn:aws:cloudwatch:us-west-2:123456789012:dataset/default
///       scrapeConfiguration: |
///         global:
///           scrape_interval: 30s
///         scrape_configs:
///           - job_name: pod_exporter
///             kubernetes_sd_configs:
///               - role: pod
/// ```
///
///
/// ### VPC Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amp.Scraper("example", {
///     source: {
///         vpc: {
///             securityGroupIds: [exampleAwsSecurityGroup.id],
///             subnetIds: [
///                 example1.id,
///                 example2.id,
///             ],
///         },
///     },
///     destination: {
///         amp: {
///             workspaceArn: exampleAwsPrometheusWorkspace.arn,
///         },
///     },
///     scrapeConfiguration: `global:
///   scrape_interval: 30s
/// scrape_configs:
///   - job_name: 'my-service'
///     dns_sd_configs:
///       - names: ['my-service.my-namespace']
///         type: A
///         port: 8080
///     metrics_path: '/metrics'
///     relabel_configs:
///       - target_label: service_name
///         replacement: 'my-service'
///       - target_label: discovery_method
///         replacement: 'cloudmap-dns'
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Scraper("example",
///     source={
///         "vpc": {
///             "security_group_ids": [example_aws_security_group["id"]],
///             "subnet_ids": [
///                 example1["id"],
///                 example2["id"],
///             ],
///         },
///     },
///     destination={
///         "amp": {
///             "workspace_arn": example_aws_prometheus_workspace["arn"],
///         },
///     },
///     scrape_configuration="""global:
///   scrape_interval: 30s
/// scrape_configs:
///   - job_name: 'my-service'
///     dns_sd_configs:
///       - names: ['my-service.my-namespace']
///         type: A
///         port: 8080
///     metrics_path: '/metrics'
///     relabel_configs:
///       - target_label: service_name
///         replacement: 'my-service'
///       - target_label: discovery_method
///         replacement: 'cloudmap-dns'
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
///     var example = new Aws.Amp.Scraper("example", new()
///     {
///         Source = new Aws.Amp.Inputs.ScraperSourceArgs
///         {
///             Vpc = new Aws.Amp.Inputs.ScraperSourceVpcArgs
///             {
///                 SecurityGroupIds = new[]
///                 {
///                     exampleAwsSecurityGroup.Id,
///                 },
///                 SubnetIds = new[]
///                 {
///                     example1.Id,
///                     example2.Id,
///                 },
///             },
///         },
///         Destination = new Aws.Amp.Inputs.ScraperDestinationArgs
///         {
///             Amp = new Aws.Amp.Inputs.ScraperDestinationAmpArgs
///             {
///                 WorkspaceArn = exampleAwsPrometheusWorkspace.Arn,
///             },
///         },
///         ScrapeConfiguration = @"global:
///   scrape_interval: 30s
/// scrape_configs:
///   - job_name: 'my-service'
///     dns_sd_configs:
///       - names: ['my-service.my-namespace']
///         type: A
///         port: 8080
///     metrics_path: '/metrics'
///     relabel_configs:
///       - target_label: service_name
///         replacement: 'my-service'
///       - target_label: discovery_method
///         replacement: 'cloudmap-dns'
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amp.NewScraper(ctx, "example", &amp.ScraperArgs{
/// 			Source: &amp.ScraperSourceArgs{
/// 				Vpc: &amp.ScraperSourceVpcArgs{
/// 					SecurityGroupIds: pulumi.StringArray{
/// 						exampleAwsSecurityGroup.Id,
/// 					},
/// 					SubnetIds: pulumi.StringArray{
/// 						example1.Id,
/// 						example2.Id,
/// 					},
/// 				},
/// 			},
/// 			Destination: &amp.ScraperDestinationArgs{
/// 				Amp: &amp.ScraperDestinationAmpArgs{
/// 					WorkspaceArn: pulumi.Any(exampleAwsPrometheusWorkspace.Arn),
/// 				},
/// 			},
/// 			ScrapeConfiguration: pulumi.String(`global:
///   scrape_interval: 30s
/// scrape_configs:
///   - job_name: 'my-service'
///     dns_sd_configs:
///       - names: ['my-service.my-namespace']
///         type: A
///         port: 8080
///     metrics_path: '/metrics'
///     relabel_configs:
///       - target_label: service_name
///         replacement: 'my-service'
///       - target_label: discovery_method
///         replacement: 'cloudmap-dns'
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
/// resource "aws_amp_scraper" "example" {
///   source = {
///     vpc = {
///       security_group_ids = [exampleAwsSecurityGroup.id]
///       subnet_ids         = [example1.id, example2.id]
///     }
///   }
///   destination = {
///     amp = {
///       workspace_arn = exampleAwsPrometheusWorkspace.arn
///     }
///   }
///   scrape_configuration = "global:\n  scrape_interval: 30s\nscrape_configs:\n  - job_name: 'my-service'\n    dns_sd_configs:\n      - names: ['my-service.my-namespace']\n        type: A\n        port: 8080\n    metrics_path: '/metrics'\n    relabel_configs:\n      - target_label: service_name\n        replacement: 'my-service'\n      - target_label: discovery_method\n        replacement: 'cloudmap-dns'\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.amp.Scraper;
/// import com.pulumi.aws.amp.ScraperArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceVpcArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationAmpArgs;
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
///         var example = new Scraper("example", ScraperArgs.builder()
///             .source(ScraperSourceArgs.builder()
///                 .vpc(ScraperSourceVpcArgs.builder()
///                     .securityGroupIds(exampleAwsSecurityGroup.id())
///                     .subnetIds(
///                         example1.id(),
///                         example2.id())
///                     .build())
///                 .build())
///             .destination(ScraperDestinationArgs.builder()
///                 .amp(ScraperDestinationAmpArgs.builder()
///                     .workspaceArn(exampleAwsPrometheusWorkspace.arn())
///                     .build())
///                 .build())
///             .scrapeConfiguration("""
/// global:
///   scrape_interval: 30s
/// scrape_configs:
///   - job_name: 'my-service'
///     dns_sd_configs:
///       - names: ['my-service.my-namespace']
///         type: A
///         port: 8080
///     metrics_path: '/metrics'
///     relabel_configs:
///       - target_label: service_name
///         replacement: 'my-service'
///       - target_label: discovery_method
///         replacement: 'cloudmap-dns'
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:Scraper
///     properties:
///       source:
///         vpc:
///           securityGroupIds:
///             - ${exampleAwsSecurityGroup.id}
///           subnetIds:
///             - ${example1.id}
///             - ${example2.id}
///       destination:
///         amp:
///           workspaceArn: ${exampleAwsPrometheusWorkspace.arn}
///       scrapeConfiguration: |
///         global:
///           scrape_interval: 30s
///         scrape_configs:
///           - job_name: 'my-service'
///             dns_sd_configs:
///               - names: ['my-service.my-namespace']
///                 type: A
///                 port: 8080
///             metrics_path: '/metrics'
///             relabel_configs:
///               - target_label: service_name
///                 replacement: 'my-service'
///               - target_label: discovery_method
///                 replacement: 'cloudmap-dns'
/// ```
///
///
/// ### OpenSearch Exporter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amp.Scraper("example", {
///     source: {
///         vpc: {
///             securityGroupIds: [exampleAwsSecurityGroup.id],
///             subnetIds: [
///                 example1.id,
///                 example2.id,
///             ],
///         },
///     },
///     destination: {
///         amp: {
///             workspaceArn: exampleAwsPrometheusWorkspace.arn,
///         },
///     },
///     exporter: {
///         opensearch: {
///             domainArn: exampleAwsOpensearchDomain.arn,
///         },
///     },
///     scrapeConfiguration: `global:
///   scrape_interval: 30s
/// scrape_configs:
///   - job_name: 'my-service'
///     dns_sd_configs:
///       - names: ['my-service.my-namespace']
///         type: A
///         port: 8080
///     metrics_path: '/metrics'
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Scraper("example",
///     source={
///         "vpc": {
///             "security_group_ids": [example_aws_security_group["id"]],
///             "subnet_ids": [
///                 example1["id"],
///                 example2["id"],
///             ],
///         },
///     },
///     destination={
///         "amp": {
///             "workspace_arn": example_aws_prometheus_workspace["arn"],
///         },
///     },
///     exporter={
///         "opensearch": {
///             "domain_arn": example_aws_opensearch_domain["arn"],
///         },
///     },
///     scrape_configuration="""global:
///   scrape_interval: 30s
/// scrape_configs:
///   - job_name: 'my-service'
///     dns_sd_configs:
///       - names: ['my-service.my-namespace']
///         type: A
///         port: 8080
///     metrics_path: '/metrics'
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
///     var example = new Aws.Amp.Scraper("example", new()
///     {
///         Source = new Aws.Amp.Inputs.ScraperSourceArgs
///         {
///             Vpc = new Aws.Amp.Inputs.ScraperSourceVpcArgs
///             {
///                 SecurityGroupIds = new[]
///                 {
///                     exampleAwsSecurityGroup.Id,
///                 },
///                 SubnetIds = new[]
///                 {
///                     example1.Id,
///                     example2.Id,
///                 },
///             },
///         },
///         Destination = new Aws.Amp.Inputs.ScraperDestinationArgs
///         {
///             Amp = new Aws.Amp.Inputs.ScraperDestinationAmpArgs
///             {
///                 WorkspaceArn = exampleAwsPrometheusWorkspace.Arn,
///             },
///         },
///         Exporter = new Aws.Amp.Inputs.ScraperExporterArgs
///         {
///             Opensearch = new Aws.Amp.Inputs.ScraperExporterOpensearchArgs
///             {
///                 DomainArn = exampleAwsOpensearchDomain.Arn,
///             },
///         },
///         ScrapeConfiguration = @"global:
///   scrape_interval: 30s
/// scrape_configs:
///   - job_name: 'my-service'
///     dns_sd_configs:
///       - names: ['my-service.my-namespace']
///         type: A
///         port: 8080
///     metrics_path: '/metrics'
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amp.NewScraper(ctx, "example", &amp.ScraperArgs{
/// 			Source: &amp.ScraperSourceArgs{
/// 				Vpc: &amp.ScraperSourceVpcArgs{
/// 					SecurityGroupIds: pulumi.StringArray{
/// 						exampleAwsSecurityGroup.Id,
/// 					},
/// 					SubnetIds: pulumi.StringArray{
/// 						example1.Id,
/// 						example2.Id,
/// 					},
/// 				},
/// 			},
/// 			Destination: &amp.ScraperDestinationArgs{
/// 				Amp: &amp.ScraperDestinationAmpArgs{
/// 					WorkspaceArn: pulumi.Any(exampleAwsPrometheusWorkspace.Arn),
/// 				},
/// 			},
/// 			Exporter: &amp.ScraperExporterArgs{
/// 				Opensearch: &amp.ScraperExporterOpensearchArgs{
/// 					DomainArn: pulumi.Any(exampleAwsOpensearchDomain.Arn),
/// 				},
/// 			},
/// 			ScrapeConfiguration: pulumi.String(`global:
///   scrape_interval: 30s
/// scrape_configs:
///   - job_name: 'my-service'
///     dns_sd_configs:
///       - names: ['my-service.my-namespace']
///         type: A
///         port: 8080
///     metrics_path: '/metrics'
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
/// resource "aws_amp_scraper" "example" {
///   source = {
///     vpc = {
///       security_group_ids = [exampleAwsSecurityGroup.id]
///       subnet_ids         = [example1.id, example2.id]
///     }
///   }
///   destination = {
///     amp = {
///       workspace_arn = exampleAwsPrometheusWorkspace.arn
///     }
///   }
///   exporter = {
///     opensearch = {
///       domain_arn = exampleAwsOpensearchDomain.arn
///     }
///   }
///   scrape_configuration = "global:\n  scrape_interval: 30s\nscrape_configs:\n  - job_name: 'my-service'\n    dns_sd_configs:\n      - names: ['my-service.my-namespace']\n        type: A\n        port: 8080\n    metrics_path: '/metrics'\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.amp.Scraper;
/// import com.pulumi.aws.amp.ScraperArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceVpcArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationAmpArgs;
/// import com.pulumi.aws.amp.inputs.ScraperExporterArgs;
/// import com.pulumi.aws.amp.inputs.ScraperExporterOpensearchArgs;
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
///         var example = new Scraper("example", ScraperArgs.builder()
///             .source(ScraperSourceArgs.builder()
///                 .vpc(ScraperSourceVpcArgs.builder()
///                     .securityGroupIds(exampleAwsSecurityGroup.id())
///                     .subnetIds(
///                         example1.id(),
///                         example2.id())
///                     .build())
///                 .build())
///             .destination(ScraperDestinationArgs.builder()
///                 .amp(ScraperDestinationAmpArgs.builder()
///                     .workspaceArn(exampleAwsPrometheusWorkspace.arn())
///                     .build())
///                 .build())
///             .exporter(ScraperExporterArgs.builder()
///                 .opensearch(ScraperExporterOpensearchArgs.builder()
///                     .domainArn(exampleAwsOpensearchDomain.arn())
///                     .build())
///                 .build())
///             .scrapeConfiguration("""
/// global:
///   scrape_interval: 30s
/// scrape_configs:
///   - job_name: 'my-service'
///     dns_sd_configs:
///       - names: ['my-service.my-namespace']
///         type: A
///         port: 8080
///     metrics_path: '/metrics'
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:Scraper
///     properties:
///       source:
///         vpc:
///           securityGroupIds:
///             - ${exampleAwsSecurityGroup.id}
///           subnetIds:
///             - ${example1.id}
///             - ${example2.id}
///       destination:
///         amp:
///           workspaceArn: ${exampleAwsPrometheusWorkspace.arn}
///       exporter:
///         opensearch:
///           domainArn: ${exampleAwsOpensearchDomain.arn}
///       scrapeConfiguration: |
///         global:
///           scrape_interval: 30s
///         scrape_configs:
///           - job_name: 'my-service'
///             dns_sd_configs:
///               - names: ['my-service.my-namespace']
///                 type: A
///                 port: 8080
///             metrics_path: '/metrics'
/// ```
///
///
/// ### Use default EKS scraper configuration
///
/// You can use the data source `aws.amp.getDefaultScraperConfiguration` to use a
/// service managed scrape configuration.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.amp.getDefaultScraperConfiguration({});
/// const exampleScraper = new aws.amp.Scraper("example", {
///     destination: {
///         amp: {
///             workspaceArn: exampleAwsPrometheusWorkspace.arn,
///         },
///     },
///     source: {
///         eks: {
///             clusterArn: exampleAwsEksCluster.arn,
///             subnetIds: exampleAwsEksCluster.vpcConfig[0].subnetIds,
///         },
///     },
///     scrapeConfiguration: example.then(example => example.configuration),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.get_default_scraper_configuration()
/// example_scraper = aws.amp.Scraper("example",
///     destination={
///         "amp": {
///             "workspace_arn": example_aws_prometheus_workspace["arn"],
///         },
///     },
///     source={
///         "eks": {
///             "cluster_arn": example_aws_eks_cluster["arn"],
///             "subnet_ids": example_aws_eks_cluster["vpcConfig"][0]["subnetIds"],
///         },
///     },
///     scrape_configuration=example.configuration)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Amp.GetDefaultScraperConfiguration.Invoke();
///
///     var exampleScraper = new Aws.Amp.Scraper("example", new()
///     {
///         Destination = new Aws.Amp.Inputs.ScraperDestinationArgs
///         {
///             Amp = new Aws.Amp.Inputs.ScraperDestinationAmpArgs
///             {
///                 WorkspaceArn = exampleAwsPrometheusWorkspace.Arn,
///             },
///         },
///         Source = new Aws.Amp.Inputs.ScraperSourceArgs
///         {
///             Eks = new Aws.Amp.Inputs.ScraperSourceEksArgs
///             {
///                 ClusterArn = exampleAwsEksCluster.Arn,
///                 SubnetIds = exampleAwsEksCluster.VpcConfig[0].SubnetIds,
///             },
///         },
///         ScrapeConfiguration = example.Apply(getDefaultScraperConfigurationResult => getDefaultScraperConfigurationResult.Configuration),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := amp.GetDefaultScraperConfiguration(ctx, &amp.GetDefaultScraperConfigurationArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amp.NewScraper(ctx, "example", &amp.ScraperArgs{
/// 			Destination: &amp.ScraperDestinationArgs{
/// 				Amp: &amp.ScraperDestinationAmpArgs{
/// 					WorkspaceArn: pulumi.Any(exampleAwsPrometheusWorkspace.Arn),
/// 				},
/// 			},
/// 			Source: &amp.ScraperSourceArgs{
/// 				Eks: &amp.ScraperSourceEksArgs{
/// 					ClusterArn: pulumi.Any(exampleAwsEksCluster.Arn),
/// 					SubnetIds:  pulumi.Any(exampleAwsEksCluster.VpcConfig[0].SubnetIds),
/// 				},
/// 			},
/// 			ScrapeConfiguration: pulumi.String(example.Configuration),
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
/// data "aws_amp_getdefaultscraperconfiguration" "example" {
/// }
///
/// resource "aws_amp_scraper" "example" {
///   destination = {
///     amp = {
///       workspace_arn = exampleAwsPrometheusWorkspace.arn
///     }
///   }
///   source = {
///     eks = {
///       cluster_arn = exampleAwsEksCluster.arn
///       subnet_ids  = exampleAwsEksCluster.vpcConfig[0].subnetIds
///     }
///   }
///   scrape_configuration = data.aws_amp_getdefaultscraperconfiguration.example.configuration
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.amp.AmpFunctions;
/// import com.pulumi.aws.amp.inputs.GetDefaultScraperConfigurationArgs;
/// import com.pulumi.aws.amp.Scraper;
/// import com.pulumi.aws.amp.ScraperArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationAmpArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceEksArgs;
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
///         final var example = AmpFunctions.getDefaultScraperConfiguration(GetDefaultScraperConfigurationArgs.builder()
///             .build());
///
///         var exampleScraper = new Scraper("exampleScraper", ScraperArgs.builder()
///             .destination(ScraperDestinationArgs.builder()
///                 .amp(ScraperDestinationAmpArgs.builder()
///                     .workspaceArn(exampleAwsPrometheusWorkspace.arn())
///                     .build())
///                 .build())
///             .source(ScraperSourceArgs.builder()
///                 .eks(ScraperSourceEksArgs.builder()
///                     .clusterArn(exampleAwsEksCluster.arn())
///                     .subnetIds(exampleAwsEksCluster.vpcConfig()[0].subnetIds())
///                     .build())
///                 .build())
///             .scrapeConfiguration(example.configuration())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleScraper:
///     type: aws:amp:Scraper
///     name: example
///     properties:
///       destination:
///         amp:
///           workspaceArn: ${exampleAwsPrometheusWorkspace.arn}
///       source:
///         eks:
///           clusterArn: ${exampleAwsEksCluster.arn}
///           subnetIds: ${exampleAwsEksCluster.vpcConfig[0].subnetIds}
///       scrapeConfiguration: ${example.configuration}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:amp:getDefaultScraperConfiguration
///       arguments: {}
/// ```
///
///
/// ### Ignoring changes to Prometheus Workspace destination
///
/// A managed scraper will add a `AMPAgentlessScraper` tag to its Prometheus workspace
/// destination. To avoid Terraform state forcing removing the tag from the workspace,
/// you can add this tag to the destination workspace (preferred) or ignore tags
/// changes with `lifecycle`. See example below.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _this = aws.eks.getCluster({
///     name: "example",
/// });
/// const example = new aws.amp.Workspace("example", {tags: {
///     AMPAgentlessScraper: "",
/// }});
/// const exampleScraper = new aws.amp.Scraper("example", {
///     source: {
///         eks: {
///             clusterArn: exampleAwsEksCluster.arn,
///             subnetIds: exampleAwsEksCluster.vpcConfig[0].subnetIds,
///         },
///     },
///     destination: {
///         amp: {
///             workspaceArn: example.arn,
///         },
///     },
///     scrapeConfiguration: "...",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// this = aws.eks.get_cluster(name="example")
/// example = aws.amp.Workspace("example", tags={
///     "AMPAgentlessScraper": "",
/// })
/// example_scraper = aws.amp.Scraper("example",
///     source={
///         "eks": {
///             "cluster_arn": example_aws_eks_cluster["arn"],
///             "subnet_ids": example_aws_eks_cluster["vpcConfig"][0]["subnetIds"],
///         },
///     },
///     destination={
///         "amp": {
///             "workspace_arn": example.arn,
///         },
///     },
///     scrape_configuration="...")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @this = Aws.Eks.GetCluster.Invoke(new()
///     {
///         Name = "example",
///     });
///
///     var example = new Aws.Amp.Workspace("example", new()
///     {
///         Tags =
///         {
///             { "AMPAgentlessScraper", "" },
///         },
///     });
///
///     var exampleScraper = new Aws.Amp.Scraper("example", new()
///     {
///         Source = new Aws.Amp.Inputs.ScraperSourceArgs
///         {
///             Eks = new Aws.Amp.Inputs.ScraperSourceEksArgs
///             {
///                 ClusterArn = exampleAwsEksCluster.Arn,
///                 SubnetIds = exampleAwsEksCluster.VpcConfig[0].SubnetIds,
///             },
///         },
///         Destination = new Aws.Amp.Inputs.ScraperDestinationArgs
///         {
///             Amp = new Aws.Amp.Inputs.ScraperDestinationAmpArgs
///             {
///                 WorkspaceArn = example.Arn,
///             },
///         },
///         ScrapeConfiguration = "...",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eks.LookupCluster(ctx, &eks.LookupClusterArgs{
/// 			Name: "example",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := amp.NewWorkspace(ctx, "example", &amp.WorkspaceArgs{
/// 			Tags: pulumi.StringMap{
/// 				"AMPAgentlessScraper": pulumi.String(""),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amp.NewScraper(ctx, "example", &amp.ScraperArgs{
/// 			Source: &amp.ScraperSourceArgs{
/// 				Eks: &amp.ScraperSourceEksArgs{
/// 					ClusterArn: pulumi.Any(exampleAwsEksCluster.Arn),
/// 					SubnetIds:  pulumi.Any(exampleAwsEksCluster.VpcConfig[0].SubnetIds),
/// 				},
/// 			},
/// 			Destination: &amp.ScraperDestinationArgs{
/// 				Amp: &amp.ScraperDestinationAmpArgs{
/// 					WorkspaceArn: example.Arn,
/// 				},
/// 			},
/// 			ScrapeConfiguration: pulumi.String("..."),
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
/// data "aws_eks_getcluster" "this" {
///   name = "example"
/// }
///
/// resource "aws_amp_workspace" "example" {
///   tags = {
///     "AMPAgentlessScraper" = ""
///   }
/// }
/// resource "aws_amp_scraper" "example" {
///   source = {
///     eks = {
///       cluster_arn = exampleAwsEksCluster.arn
///       subnet_ids  = exampleAwsEksCluster.vpcConfig[0].subnetIds
///     }
///   }
///   destination = {
///     amp = {
///       workspace_arn = aws_amp_workspace.example.arn
///     }
///   }
///   scrape_configuration = "..."
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.eks.EksFunctions;
/// import com.pulumi.aws.eks.inputs.GetClusterArgs;
/// import com.pulumi.aws.amp.Workspace;
/// import com.pulumi.aws.amp.WorkspaceArgs;
/// import com.pulumi.aws.amp.Scraper;
/// import com.pulumi.aws.amp.ScraperArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceEksArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationAmpArgs;
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
///         final var this = EksFunctions.getCluster(GetClusterArgs.builder()
///             .name("example")
///             .build());
///
///         var example = new Workspace("example", WorkspaceArgs.builder()
///             .tags(Map.of("AMPAgentlessScraper", ""))
///             .build());
///
///         var exampleScraper = new Scraper("exampleScraper", ScraperArgs.builder()
///             .source(ScraperSourceArgs.builder()
///                 .eks(ScraperSourceEksArgs.builder()
///                     .clusterArn(exampleAwsEksCluster.arn())
///                     .subnetIds(exampleAwsEksCluster.vpcConfig()[0].subnetIds())
///                     .build())
///                 .build())
///             .destination(ScraperDestinationArgs.builder()
///                 .amp(ScraperDestinationAmpArgs.builder()
///                     .workspaceArn(example.arn())
///                     .build())
///                 .build())
///             .scrapeConfiguration("...")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:Workspace
///     properties:
///       tags:
///         AMPAgentlessScraper: ""
///   exampleScraper:
///     type: aws:amp:Scraper
///     name: example
///     properties:
///       source:
///         eks:
///           clusterArn: ${exampleAwsEksCluster.arn}
///           subnetIds: ${exampleAwsEksCluster.vpcConfig[0].subnetIds}
///       destination:
///         amp:
///           workspaceArn: ${example.arn}
///       scrapeConfiguration: '...'
/// variables:
///   this:
///     fn::invoke:
///       function: aws:eks:getCluster
///       arguments:
///         name: example
/// ```
///
///
/// ### Configure aws-auth
///
/// Your source Amazon EKS cluster must be configured to allow the scraper to access
/// metrics. Follow the [user guide](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-eks-setup)
/// to setup the appropriate Kubernetes permissions.
///
/// ### Cross-Account Configuration
///
/// This setup allows the scraper, running in a source account, to remote write its collected metrics to a workspace in a target account. Note that:
///
/// - The target Role and target Workspace must be in the same account
/// - The source Scraper and target Workspace must be in the same Region
///
/// Follow [the AWS Best Practices guide](https://aws-observability.github.io/observability-best-practices/patterns/ampxa) to learn about the IAM roles configuration and overall setup.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amp.Scraper("example", {
///     source: {
///         eks: {
///             clusterArn: exampleAwsEksCluster.arn,
///             subnetIds: exampleAwsEksCluster.vpcConfig[0].subnetIds,
///         },
///     },
///     destination: {
///         amp: {
///             workspaceArn: "<target_account_workspace_arn>",
///         },
///     },
///     roleConfiguration: {
///         sourceRoleArn: source.arn,
///         targetRoleArn: "arn:aws:iam::ACCOUNT-ID:role/target-role-name",
///     },
///     scrapeConfiguration: "...",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Scraper("example",
///     source={
///         "eks": {
///             "cluster_arn": example_aws_eks_cluster["arn"],
///             "subnet_ids": example_aws_eks_cluster["vpcConfig"][0]["subnetIds"],
///         },
///     },
///     destination={
///         "amp": {
///             "workspace_arn": "<target_account_workspace_arn>",
///         },
///     },
///     role_configuration={
///         "source_role_arn": source["arn"],
///         "target_role_arn": "arn:aws:iam::ACCOUNT-ID:role/target-role-name",
///     },
///     scrape_configuration="...")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Amp.Scraper("example", new()
///     {
///         Source = new Aws.Amp.Inputs.ScraperSourceArgs
///         {
///             Eks = new Aws.Amp.Inputs.ScraperSourceEksArgs
///             {
///                 ClusterArn = exampleAwsEksCluster.Arn,
///                 SubnetIds = exampleAwsEksCluster.VpcConfig[0].SubnetIds,
///             },
///         },
///         Destination = new Aws.Amp.Inputs.ScraperDestinationArgs
///         {
///             Amp = new Aws.Amp.Inputs.ScraperDestinationAmpArgs
///             {
///                 WorkspaceArn = "<target_account_workspace_arn>",
///             },
///         },
///         RoleConfiguration = new Aws.Amp.Inputs.ScraperRoleConfigurationArgs
///         {
///             SourceRoleArn = source.Arn,
///             TargetRoleArn = "arn:aws:iam::ACCOUNT-ID:role/target-role-name",
///         },
///         ScrapeConfiguration = "...",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amp.NewScraper(ctx, "example", &amp.ScraperArgs{
/// 			Source: &amp.ScraperSourceArgs{
/// 				Eks: &amp.ScraperSourceEksArgs{
/// 					ClusterArn: pulumi.Any(exampleAwsEksCluster.Arn),
/// 					SubnetIds:  pulumi.Any(exampleAwsEksCluster.VpcConfig[0].SubnetIds),
/// 				},
/// 			},
/// 			Destination: &amp.ScraperDestinationArgs{
/// 				Amp: &amp.ScraperDestinationAmpArgs{
/// 					WorkspaceArn: pulumi.String("<target_account_workspace_arn>"),
/// 				},
/// 			},
/// 			RoleConfiguration: &amp.ScraperRoleConfigurationArgs{
/// 				SourceRoleArn: pulumi.Any(source.Arn),
/// 				TargetRoleArn: pulumi.String("arn:aws:iam::ACCOUNT-ID:role/target-role-name"),
/// 			},
/// 			ScrapeConfiguration: pulumi.String("..."),
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
/// resource "aws_amp_scraper" "example" {
///   source = {
///     eks = {
///       cluster_arn = exampleAwsEksCluster.arn
///       subnet_ids  = exampleAwsEksCluster.vpcConfig[0].subnetIds
///     }
///   }
///   destination = {
///     amp = {
///       workspace_arn = "<target_account_workspace_arn>"
///     }
///   }
///   role_configuration = {
///     source_role_arn = source.arn
///     target_role_arn = "arn:aws:iam::ACCOUNT-ID:role/target-role-name"
///   }
///   scrape_configuration = "..."
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.amp.Scraper;
/// import com.pulumi.aws.amp.ScraperArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceEksArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationAmpArgs;
/// import com.pulumi.aws.amp.inputs.ScraperRoleConfigurationArgs;
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
///         var example = new Scraper("example", ScraperArgs.builder()
///             .source(ScraperSourceArgs.builder()
///                 .eks(ScraperSourceEksArgs.builder()
///                     .clusterArn(exampleAwsEksCluster.arn())
///                     .subnetIds(exampleAwsEksCluster.vpcConfig()[0].subnetIds())
///                     .build())
///                 .build())
///             .destination(ScraperDestinationArgs.builder()
///                 .amp(ScraperDestinationAmpArgs.builder()
///                     .workspaceArn("<target_account_workspace_arn>")
///                     .build())
///                 .build())
///             .roleConfiguration(ScraperRoleConfigurationArgs.builder()
///                 .sourceRoleArn(source.arn())
///                 .targetRoleArn("arn:aws:iam::ACCOUNT-ID:role/target-role-name")
///                 .build())
///             .scrapeConfiguration("...")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:Scraper
///     properties:
///       source:
///         eks:
///           clusterArn: ${exampleAwsEksCluster.arn}
///           subnetIds: ${exampleAwsEksCluster.vpcConfig[0].subnetIds}
///       destination:
///         amp:
///           workspaceArn: <target_account_workspace_arn>
///       roleConfiguration:
///         sourceRoleArn: ${source.arn}
///         targetRoleArn: arn:aws:iam::ACCOUNT-ID:role/target-role-name
///       scrapeConfiguration: '...'
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) ID of the scraper.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import scrapers using `id`.
/// For example:
///
/// ```sh
/// $ pulumi import aws:amp/scraper:Scraper example s-b6f487db-4761-4930-9215-e9d588a7efe2
/// ```
class Scraper extends pulumi.CustomResource {
  /// Name to associate with the managed scraper. This is for your use, and does not need to be unique.
  late final pulumi.Output<String?> alias;
  /// ARN of the scraper.
  late final pulumi.Output<String> arn;
  /// Configuration block for the managed scraper to send metrics to. See `destination` Block for details.
  late final pulumi.Output<ScraperDestination> destination;
  /// Configuration block for additional exporters. See `exporter` Block for details.
  late final pulumi.Output<ScraperExporter?> exporter;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the IAM role that provides permissions for the scraper to discover, collect, and produce metrics
  late final pulumi.Output<String> roleArn;
  /// Configuration block to enable writing to an Amazon Managed Service for Prometheus workspace in a different account. See `roleConfiguration` Block for details.
  late final pulumi.Output<ScraperRoleConfiguration?> roleConfiguration;
  /// Configuration file to use in the new scraper. For more information, see [Scraper configuration](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration).
  late final pulumi.Output<String> scrapeConfiguration;
  /// Configuration block to specify where the managed scraper will collect metrics from. See `source` Block for details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ScraperSource?> source;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ScraperTimeouts?> timeouts;

  /// Creates a new [Scraper].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Scraper]. {@macro pulumi_amp_scraper_scraper_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Scraper(
    String name, {
    ScraperArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amp/scraper:Scraper',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    alias = registerOutput<String?>('alias');
    arn = registerOutput<String>('arn');
    destination = registerOutput<ScraperDestination>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    exporter = registerOutput<ScraperExporter?>('exporter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperExporter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    roleConfiguration = registerOutput<ScraperRoleConfiguration?>('roleConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperRoleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scrapeConfiguration = registerOutput<String>('scrapeConfiguration');
    source = registerOutput<ScraperSource?>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ScraperTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Scraper] resource's state with the given [name] and [id].
  static Scraper get(
    String name,
    pulumi.Input<String> id, {
    ScraperState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Scraper._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Scraper._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amp/scraper:Scraper',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alias = registerOutput<String?>('alias');
    arn = registerOutput<String>('arn');
    destination = registerOutput<ScraperDestination>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    exporter = registerOutput<ScraperExporter?>('exporter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperExporter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    roleConfiguration = registerOutput<ScraperRoleConfiguration?>('roleConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperRoleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scrapeConfiguration = registerOutput<String>('scrapeConfiguration');
    source = registerOutput<ScraperSource?>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ScraperTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Scraper] resource.
  Scraper.reference(String urn)
    : super(
        'aws:amp/scraper:Scraper',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    alias = registerOutput<String?>('alias');
    arn = registerOutput<String>('arn');
    destination = registerOutput<ScraperDestination>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    exporter = registerOutput<ScraperExporter?>('exporter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperExporter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    roleConfiguration = registerOutput<ScraperRoleConfiguration?>('roleConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperRoleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scrapeConfiguration = registerOutput<String>('scrapeConfiguration');
    source = registerOutput<ScraperSource?>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ScraperTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
