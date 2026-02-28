import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_args.dart';
import 'job_config.dart';

/// Transcoding Job Resource
///
///
/// To get more information about Job, see:
///
/// * [API documentation](https://cloud.google.com/transcoder/docs/reference/rest/v1/projects.locations.jobs)
/// * How-to Guides
/// * [Transcoder](https://cloud.google.com/transcoder/docs/)
///
/// ## Example Usage
///
/// ### Transcoder Job Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.storage.Bucket("default", {
///     name: "transcoder-job",
///     location: "US",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
///     publicAccessPrevention: "enforced",
/// });
/// const exampleMp4 = new gcp.storage.BucketObject("example_mp4", {
///     name: "example.mp4",
///     source: new pulumi.asset.FileAsset("./test-fixtures/example.mp4"),
///     bucket: _default.name,
/// });
/// const defaultJobTemplate = new gcp.transcoder.JobTemplate("default", {
///     jobTemplateId: "example-job-template",
///     location: "us-central1",
///     config: {
///         inputs: [{
///             key: "input0",
///             uri: pulumi.interpolate`gs://${_default.name}/${exampleMp4.name}`,
///         }],
///         output: {
///             uri: pulumi.interpolate`gs://${_default.name}/outputs/`,
///         },
///         editLists: [{
///             key: "atom0",
///             inputs: ["input0"],
///             startTimeOffset: "0s",
///         }],
///         elementaryStreams: [
///             {
///                 key: "video-stream0",
///                 videoStream: {
///                     h264: {
///                         widthPixels: 640,
///                         heightPixels: 360,
///                         bitrateBps: 550000,
///                         frameRate: 60,
///                         pixelFormat: "yuv420p",
///                         rateControlMode: "vbr",
///                         crfLevel: 21,
///                         gopDuration: "3s",
///                         vbvSizeBits: 550000,
///                         vbvFullnessBits: 495000,
///                         entropyCoder: "cabac",
///                         profile: "high",
///                         preset: "veryfast",
///                     },
///                 },
///             },
///             {
///                 key: "video-stream1",
///                 videoStream: {
///                     h264: {
///                         widthPixels: 1280,
///                         heightPixels: 720,
///                         bitrateBps: 550000,
///                         frameRate: 60,
///                         pixelFormat: "yuv420p",
///                         rateControlMode: "vbr",
///                         crfLevel: 21,
///                         gopDuration: "3s",
///                         vbvSizeBits: 2500000,
///                         vbvFullnessBits: 2250000,
///                         entropyCoder: "cabac",
///                         profile: "high",
///                         preset: "veryfast",
///                     },
///                 },
///             },
///             {
///                 key: "audio-stream0",
///                 audioStream: {
///                     codec: "aac",
///                     bitrateBps: 64000,
///                     channelCount: 2,
///                     channelLayouts: [
///                         "fl",
///                         "fr",
///                     ],
///                     sampleRateHertz: 48000,
///                 },
///             },
///         ],
///         muxStreams: [
///             {
///                 key: "sd",
///                 fileName: "sd.mp4",
///                 container: "mp4",
///                 elementaryStreams: [
///                     "video-stream0",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 key: "hd",
///                 fileName: "hd.mp4",
///                 container: "mp4",
///                 elementaryStreams: [
///                     "video-stream1",
///                     "audio-stream0",
///                 ],
///             },
///         ],
///     },
///     labels: {
///         label: "key",
///     },
/// });
/// const defaultJob = new gcp.transcoder.Job("default", {
///     templateId: defaultJobTemplate.name,
///     location: "us-central1",
///     labels: {
///         label: "key",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.storage.Bucket("default",
///     name="transcoder-job",
///     location="US",
///     force_destroy=True,
///     uniform_bucket_level_access=True,
///     public_access_prevention="enforced")
/// example_mp4 = gcp.storage.BucketObject("example_mp4",
///     name="example.mp4",
///     source=pulumi.FileAsset("./test-fixtures/example.mp4"),
///     bucket=default.name)
/// default_job_template = gcp.transcoder.JobTemplate("default",
///     job_template_id="example-job-template",
///     location="us-central1",
///     config={
///         "inputs": [{
///             "key": "input0",
///             "uri": pulumi.Output.all(
///                 defaultName=default.name,
///                 exampleMp4Name=example_mp4.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['defaultName']}/{resolved_outputs['exampleMp4Name']}")
/// ,
///         }],
///         "output": {
///             "uri": default.name.apply(lambda name: f"gs://{name}/outputs/"),
///         },
///         "edit_lists": [{
///             "key": "atom0",
///             "inputs": ["input0"],
///             "start_time_offset": "0s",
///         }],
///         "elementary_streams": [
///             {
///                 "key": "video-stream0",
///                 "video_stream": {
///                     "h264": {
///                         "width_pixels": 640,
///                         "height_pixels": 360,
///                         "bitrate_bps": 550000,
///                         "frame_rate": 60,
///                         "pixel_format": "yuv420p",
///                         "rate_control_mode": "vbr",
///                         "crf_level": 21,
///                         "gop_duration": "3s",
///                         "vbv_size_bits": 550000,
///                         "vbv_fullness_bits": 495000,
///                         "entropy_coder": "cabac",
///                         "profile": "high",
///                         "preset": "veryfast",
///                     },
///                 },
///             },
///             {
///                 "key": "video-stream1",
///                 "video_stream": {
///                     "h264": {
///                         "width_pixels": 1280,
///                         "height_pixels": 720,
///                         "bitrate_bps": 550000,
///                         "frame_rate": 60,
///                         "pixel_format": "yuv420p",
///                         "rate_control_mode": "vbr",
///                         "crf_level": 21,
///                         "gop_duration": "3s",
///                         "vbv_size_bits": 2500000,
///                         "vbv_fullness_bits": 2250000,
///                         "entropy_coder": "cabac",
///                         "profile": "high",
///                         "preset": "veryfast",
///                     },
///                 },
///             },
///             {
///                 "key": "audio-stream0",
///                 "audio_stream": {
///                     "codec": "aac",
///                     "bitrate_bps": 64000,
///                     "channel_count": 2,
///                     "channel_layouts": [
///                         "fl",
///                         "fr",
///                     ],
///                     "sample_rate_hertz": 48000,
///                 },
///             },
///         ],
///         "mux_streams": [
///             {
///                 "key": "sd",
///                 "file_name": "sd.mp4",
///                 "container": "mp4",
///                 "elementary_streams": [
///                     "video-stream0",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 "key": "hd",
///                 "file_name": "hd.mp4",
///                 "container": "mp4",
///                 "elementary_streams": [
///                     "video-stream1",
///                     "audio-stream0",
///                 ],
///             },
///         ],
///     },
///     labels={
///         "label": "key",
///     })
/// default_job = gcp.transcoder.Job("default",
///     template_id=default_job_template.name,
///     location="us-central1",
///     labels={
///         "label": "key",
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
///     var @default = new Gcp.Storage.Bucket("default", new()
///     {
///         Name = "transcoder-job",
///         Location = "US",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///         PublicAccessPrevention = "enforced",
///     });
///
///     var exampleMp4 = new Gcp.Storage.BucketObject("example_mp4", new()
///     {
///         Name = "example.mp4",
///         Source = new FileAsset("./test-fixtures/example.mp4"),
///         Bucket = @default.Name,
///     });
///
///     var defaultJobTemplate = new Gcp.Transcoder.JobTemplate("default", new()
///     {
///         JobTemplateId = "example-job-template",
///         Location = "us-central1",
///         Config = new Gcp.Transcoder.Inputs.JobTemplateConfigArgs
///         {
///             Inputs = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigInputArgs
///                 {
///                     Key = "input0",
///                     Uri = Output.Tuple(@default.Name, exampleMp4.Name).Apply(values =>
///                     {
///                         var defaultName = values.Item1;
///                         var exampleMp4Name = values.Item2;
///                         return $"gs://{defaultName}/{exampleMp4Name}";
///                     }),
///                 },
///             },
///             Output = new Gcp.Transcoder.Inputs.JobTemplateConfigOutputArgs
///             {
///                 Uri = @default.Name.Apply(name => $"gs://{name}/outputs/"),
///             },
///             EditLists = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigEditListArgs
///                 {
///                     Key = "atom0",
///                     Inputs = new[]
///                     {
///                         "input0",
///                     },
///                     StartTimeOffset = "0s",
///                 },
///             },
///             ElementaryStreams = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamArgs
///                 {
///                     Key = "video-stream0",
///                     VideoStream = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamVideoStreamArgs
///                     {
///                         H264 = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamVideoStreamH264Args
///                         {
///                             WidthPixels = 640,
///                             HeightPixels = 360,
///                             BitrateBps = 550000,
///                             FrameRate = 60,
///                             PixelFormat = "yuv420p",
///                             RateControlMode = "vbr",
///                             CrfLevel = 21,
///                             GopDuration = "3s",
///                             VbvSizeBits = 550000,
///                             VbvFullnessBits = 495000,
///                             EntropyCoder = "cabac",
///                             Profile = "high",
///                             Preset = "veryfast",
///                         },
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamArgs
///                 {
///                     Key = "video-stream1",
///                     VideoStream = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamVideoStreamArgs
///                     {
///                         H264 = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamVideoStreamH264Args
///                         {
///                             WidthPixels = 1280,
///                             HeightPixels = 720,
///                             BitrateBps = 550000,
///                             FrameRate = 60,
///                             PixelFormat = "yuv420p",
///                             RateControlMode = "vbr",
///                             CrfLevel = 21,
///                             GopDuration = "3s",
///                             VbvSizeBits = 2500000,
///                             VbvFullnessBits = 2250000,
///                             EntropyCoder = "cabac",
///                             Profile = "high",
///                             Preset = "veryfast",
///                         },
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamArgs
///                 {
///                     Key = "audio-stream0",
///                     AudioStream = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamAudioStreamArgs
///                     {
///                         Codec = "aac",
///                         BitrateBps = 64000,
///                         ChannelCount = 2,
///                         ChannelLayouts = new[]
///                         {
///                             "fl",
///                             "fr",
///                         },
///                         SampleRateHertz = 48000,
///                     },
///                 },
///             },
///             MuxStreams = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigMuxStreamArgs
///                 {
///                     Key = "sd",
///                     FileName = "sd.mp4",
///                     Container = "mp4",
///                     ElementaryStreams = new[]
///                     {
///                         "video-stream0",
///                         "audio-stream0",
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigMuxStreamArgs
///                 {
///                     Key = "hd",
///                     FileName = "hd.mp4",
///                     Container = "mp4",
///                     ElementaryStreams = new[]
///                     {
///                         "video-stream1",
///                         "audio-stream0",
///                     },
///                 },
///             },
///         },
///         Labels =
///         {
///             { "label", "key" },
///         },
///     });
///
///     var defaultJob = new Gcp.Transcoder.Job("default", new()
///     {
///         TemplateId = defaultJobTemplate.Name,
///         Location = "us-central1",
///         Labels =
///         {
///             { "label", "key" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/transcoder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := storage.NewBucket(ctx, "default", &storage.BucketArgs{
/// 			Name:                     pulumi.String("transcoder-job"),
/// 			Location:                 pulumi.String("US"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			PublicAccessPrevention:   pulumi.String("enforced"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMp4, err := storage.NewBucketObject(ctx, "example_mp4", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("example.mp4"),
/// 			Source: pulumi.NewFileAsset("./test-fixtures/example.mp4"),
/// 			Bucket: _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultJobTemplate, err := transcoder.NewJobTemplate(ctx, "default", &transcoder.JobTemplateArgs{
/// 			JobTemplateId: pulumi.String("example-job-template"),
/// 			Location:      pulumi.String("us-central1"),
/// 			Config: &transcoder.JobTemplateConfigArgs{
/// 				Inputs: transcoder.JobTemplateConfigInputTypeArray{
/// 					&transcoder.JobTemplateConfigInputTypeArgs{
/// 						Key: pulumi.String("input0"),
/// 						Uri: pulumi.All(_default.Name, exampleMp4.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 							defaultName := _args[0].(string)
/// 							exampleMp4Name := _args[1].(string)
/// 							return fmt.Sprintf("gs://%v/%v", defaultName, exampleMp4Name), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 				Output: &transcoder.JobTemplateConfigOutputTypeArgs{
/// 					Uri: _default.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("gs://%v/outputs/", name), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				EditLists: transcoder.JobTemplateConfigEditListArray{
/// 					&transcoder.JobTemplateConfigEditListArgs{
/// 						Key: pulumi.String("atom0"),
/// 						Inputs: pulumi.StringArray{
/// 							pulumi.String("input0"),
/// 						},
/// 						StartTimeOffset: pulumi.String("0s"),
/// 					},
/// 				},
/// 				ElementaryStreams: transcoder.JobTemplateConfigElementaryStreamArray{
/// 					&transcoder.JobTemplateConfigElementaryStreamArgs{
/// 						Key: pulumi.String("video-stream0"),
/// 						VideoStream: &transcoder.JobTemplateConfigElementaryStreamVideoStreamArgs{
/// 							H264: &transcoder.JobTemplateConfigElementaryStreamVideoStreamH264Args{
/// 								WidthPixels:     pulumi.Int(640),
/// 								HeightPixels:    pulumi.Int(360),
/// 								BitrateBps:      pulumi.Int(550000),
/// 								FrameRate:       pulumi.Int(60),
/// 								PixelFormat:     pulumi.String("yuv420p"),
/// 								RateControlMode: pulumi.String("vbr"),
/// 								CrfLevel:        pulumi.Int(21),
/// 								GopDuration:     pulumi.String("3s"),
/// 								VbvSizeBits:     pulumi.Int(550000),
/// 								VbvFullnessBits: pulumi.Int(495000),
/// 								EntropyCoder:    pulumi.String("cabac"),
/// 								Profile:         pulumi.String("high"),
/// 								Preset:          pulumi.String("veryfast"),
/// 							},
/// 						},
/// 					},
/// 					&transcoder.JobTemplateConfigElementaryStreamArgs{
/// 						Key: pulumi.String("video-stream1"),
/// 						VideoStream: &transcoder.JobTemplateConfigElementaryStreamVideoStreamArgs{
/// 							H264: &transcoder.JobTemplateConfigElementaryStreamVideoStreamH264Args{
/// 								WidthPixels:     pulumi.Int(1280),
/// 								HeightPixels:    pulumi.Int(720),
/// 								BitrateBps:      pulumi.Int(550000),
/// 								FrameRate:       pulumi.Int(60),
/// 								PixelFormat:     pulumi.String("yuv420p"),
/// 								RateControlMode: pulumi.String("vbr"),
/// 								CrfLevel:        pulumi.Int(21),
/// 								GopDuration:     pulumi.String("3s"),
/// 								VbvSizeBits:     pulumi.Int(2500000),
/// 								VbvFullnessBits: pulumi.Int(2250000),
/// 								EntropyCoder:    pulumi.String("cabac"),
/// 								Profile:         pulumi.String("high"),
/// 								Preset:          pulumi.String("veryfast"),
/// 							},
/// 						},
/// 					},
/// 					&transcoder.JobTemplateConfigElementaryStreamArgs{
/// 						Key: pulumi.String("audio-stream0"),
/// 						AudioStream: &transcoder.JobTemplateConfigElementaryStreamAudioStreamArgs{
/// 							Codec:        pulumi.String("aac"),
/// 							BitrateBps:   pulumi.Int(64000),
/// 							ChannelCount: pulumi.Int(2),
/// 							ChannelLayouts: pulumi.StringArray{
/// 								pulumi.String("fl"),
/// 								pulumi.String("fr"),
/// 							},
/// 							SampleRateHertz: pulumi.Int(48000),
/// 						},
/// 					},
/// 				},
/// 				MuxStreams: transcoder.JobTemplateConfigMuxStreamArray{
/// 					&transcoder.JobTemplateConfigMuxStreamArgs{
/// 						Key:       pulumi.String("sd"),
/// 						FileName:  pulumi.String("sd.mp4"),
/// 						Container: pulumi.String("mp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("video-stream0"),
/// 							pulumi.String("audio-stream0"),
/// 						},
/// 					},
/// 					&transcoder.JobTemplateConfigMuxStreamArgs{
/// 						Key:       pulumi.String("hd"),
/// 						FileName:  pulumi.String("hd.mp4"),
/// 						Container: pulumi.String("mp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("video-stream1"),
/// 							pulumi.String("audio-stream0"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = transcoder.NewJob(ctx, "default", &transcoder.JobArgs{
/// 			TemplateId: defaultJobTemplate.Name,
/// 			Location:   pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.transcoder.JobTemplate;
/// import com.pulumi.gcp.transcoder.JobTemplateArgs;
/// import com.pulumi.gcp.transcoder.inputs.JobTemplateConfigArgs;
/// import com.pulumi.gcp.transcoder.inputs.JobTemplateConfigOutputArgs;
/// import com.pulumi.gcp.transcoder.Job;
/// import com.pulumi.gcp.transcoder.JobArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var default_ = new Bucket("default", BucketArgs.builder()
///             .name("transcoder-job")
///             .location("US")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .publicAccessPrevention("enforced")
///             .build());
///
///         var exampleMp4 = new BucketObject("exampleMp4", BucketObjectArgs.builder()
///             .name("example.mp4")
///             .source(new FileAsset("./test-fixtures/example.mp4"))
///             .bucket(default_.name())
///             .build());
///
///         var defaultJobTemplate = new JobTemplate("defaultJobTemplate", JobTemplateArgs.builder()
///             .jobTemplateId("example-job-template")
///             .location("us-central1")
///             .config(JobTemplateConfigArgs.builder()
///                 .inputs(JobTemplateConfigInputArgs.builder()
///                     .key("input0")
///                     .uri(Output.tuple(default_.name(), exampleMp4.name()).applyValue(values -> {
///                         var defaultName = values.t1;
///                         var exampleMp4Name = values.t2;
///                         return String.format("gs://%s/%s", defaultName,exampleMp4Name);
///                     }))
///                     .build())
///                 .output(JobTemplateConfigOutputArgs.builder()
///                     .uri(default_.name().applyValue(_name -> String.format("gs://%s/outputs/", _name)))
///                     .build())
///                 .editLists(JobTemplateConfigEditListArgs.builder()
///                     .key("atom0")
///                     .inputs("input0")
///                     .startTimeOffset("0s")
///                     .build())
///                 .elementaryStreams(
///                     JobTemplateConfigElementaryStreamArgs.builder()
///                         .key("video-stream0")
///                         .videoStream(JobTemplateConfigElementaryStreamVideoStreamArgs.builder()
///                             .h264(JobTemplateConfigElementaryStreamVideoStreamH264Args.builder()
///                                 .widthPixels(640)
///                                 .heightPixels(360)
///                                 .bitrateBps(550000)
///                                 .frameRate(60)
///                                 .pixelFormat("yuv420p")
///                                 .rateControlMode("vbr")
///                                 .crfLevel(21)
///                                 .gopDuration("3s")
///                                 .vbvSizeBits(550000)
///                                 .vbvFullnessBits(495000)
///                                 .entropyCoder("cabac")
///                                 .profile("high")
///                                 .preset("veryfast")
///                                 .build())
///                             .build())
///                         .build(),
///                     JobTemplateConfigElementaryStreamArgs.builder()
///                         .key("video-stream1")
///                         .videoStream(JobTemplateConfigElementaryStreamVideoStreamArgs.builder()
///                             .h264(JobTemplateConfigElementaryStreamVideoStreamH264Args.builder()
///                                 .widthPixels(1280)
///                                 .heightPixels(720)
///                                 .bitrateBps(550000)
///                                 .frameRate(60)
///                                 .pixelFormat("yuv420p")
///                                 .rateControlMode("vbr")
///                                 .crfLevel(21)
///                                 .gopDuration("3s")
///                                 .vbvSizeBits(2500000)
///                                 .vbvFullnessBits(2250000)
///                                 .entropyCoder("cabac")
///                                 .profile("high")
///                                 .preset("veryfast")
///                                 .build())
///                             .build())
///                         .build(),
///                     JobTemplateConfigElementaryStreamArgs.builder()
///                         .key("audio-stream0")
///                         .audioStream(JobTemplateConfigElementaryStreamAudioStreamArgs.builder()
///                             .codec("aac")
///                             .bitrateBps(64000)
///                             .channelCount(2)
///                             .channelLayouts(
///                                 "fl",
///                                 "fr")
///                             .sampleRateHertz(48000)
///                             .build())
///                         .build())
///                 .muxStreams(
///                     JobTemplateConfigMuxStreamArgs.builder()
///                         .key("sd")
///                         .fileName("sd.mp4")
///                         .container("mp4")
///                         .elementaryStreams(
///                             "video-stream0",
///                             "audio-stream0")
///                         .build(),
///                     JobTemplateConfigMuxStreamArgs.builder()
///                         .key("hd")
///                         .fileName("hd.mp4")
///                         .container("mp4")
///                         .elementaryStreams(
///                             "video-stream1",
///                             "audio-stream0")
///                         .build())
///                 .build())
///             .labels(Map.of("label", "key"))
///             .build());
///
///         var defaultJob = new Job("defaultJob", JobArgs.builder()
///             .templateId(defaultJobTemplate.name())
///             .location("us-central1")
///             .labels(Map.of("label", "key"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:storage:Bucket
///     properties:
///       name: transcoder-job
///       location: US
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///       publicAccessPrevention: enforced
///   exampleMp4:
///     type: gcp:storage:BucketObject
///     name: example_mp4
///     properties:
///       name: example.mp4
///       source:
///         fn::FileAsset: ./test-fixtures/example.mp4
///       bucket: ${default.name}
///   defaultJob:
///     type: gcp:transcoder:Job
///     name: default
///     properties:
///       templateId: ${defaultJobTemplate.name}
///       location: us-central1
///       labels:
///         label: key
///   defaultJobTemplate:
///     type: gcp:transcoder:JobTemplate
///     name: default
///     properties:
///       jobTemplateId: example-job-template
///       location: us-central1
///       config:
///         inputs:
///           - key: input0
///             uri: gs://${default.name}/${exampleMp4.name}
///         output:
///           uri: gs://${default.name}/outputs/
///         editLists:
///           - key: atom0
///             inputs:
///               - input0
///             startTimeOffset: 0s
///         elementaryStreams:
///           - key: video-stream0
///             videoStream:
///               h264:
///                 widthPixels: 640
///                 heightPixels: 360
///                 bitrateBps: 550000
///                 frameRate: 60
///                 pixelFormat: yuv420p
///                 rateControlMode: vbr
///                 crfLevel: 21
///                 gopDuration: 3s
///                 vbvSizeBits: 550000
///                 vbvFullnessBits: 495000
///                 entropyCoder: cabac
///                 profile: high
///                 preset: veryfast
///           - key: video-stream1
///             videoStream:
///               h264:
///                 widthPixels: 1280
///                 heightPixels: 720
///                 bitrateBps: 550000
///                 frameRate: 60
///                 pixelFormat: yuv420p
///                 rateControlMode: vbr
///                 crfLevel: 21
///                 gopDuration: 3s
///                 vbvSizeBits: 2.5e+06
///                 vbvFullnessBits: 2.25e+06
///                 entropyCoder: cabac
///                 profile: high
///                 preset: veryfast
///           - key: audio-stream0
///             audioStream:
///               codec: aac
///               bitrateBps: 64000
///               channelCount: 2
///               channelLayouts:
///                 - fl
///                 - fr
///               sampleRateHertz: 48000
///         muxStreams:
///           - key: sd
///             fileName: sd.mp4
///             container: mp4
///             elementaryStreams:
///               - video-stream0
///               - audio-stream0
///           - key: hd
///             fileName: hd.mp4
///             container: mp4
///             elementaryStreams:
///               - video-stream1
///               - audio-stream0
///       labels:
///         label: key
/// ```
///
/// ### Transcoder Job Pubsub
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.storage.Bucket("default", {
///     name: "transcoder-job",
///     location: "US",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
///     publicAccessPrevention: "enforced",
/// });
/// const exampleMp4 = new gcp.storage.BucketObject("example_mp4", {
///     name: "example.mp4",
///     source: new pulumi.asset.FileAsset("./test-fixtures/example.mp4"),
///     bucket: _default.name,
/// });
/// const transcoderNotifications = new gcp.pubsub.Topic("transcoder_notifications", {name: "transcoder-notifications"});
/// const defaultJob = new gcp.transcoder.Job("default", {
///     location: "us-central1",
///     config: {
///         inputs: [{
///             key: "input0",
///             uri: pulumi.interpolate`gs://${_default.name}/${exampleMp4.name}`,
///         }],
///         editLists: [{
///             key: "atom0",
///             inputs: ["input0"],
///             startTimeOffset: "0s",
///         }],
///         adBreaks: [{
///             startTimeOffset: "3.500s",
///         }],
///         elementaryStreams: [
///             {
///                 key: "video-stream0",
///                 videoStream: {
///                     h264: {
///                         widthPixels: 640,
///                         heightPixels: 360,
///                         bitrateBps: 550000,
///                         frameRate: 60,
///                         pixelFormat: "yuv420p",
///                         rateControlMode: "vbr",
///                         crfLevel: 21,
///                         gopDuration: "3s",
///                         vbvSizeBits: 550000,
///                         vbvFullnessBits: 495000,
///                         entropyCoder: "cabac",
///                         profile: "high",
///                         preset: "veryfast",
///                     },
///                 },
///             },
///             {
///                 key: "video-stream1",
///                 videoStream: {
///                     h264: {
///                         widthPixels: 1280,
///                         heightPixels: 720,
///                         bitrateBps: 550000,
///                         frameRate: 60,
///                         pixelFormat: "yuv420p",
///                         rateControlMode: "vbr",
///                         crfLevel: 21,
///                         gopDuration: "3s",
///                         vbvSizeBits: 2500000,
///                         vbvFullnessBits: 2250000,
///                         entropyCoder: "cabac",
///                         profile: "high",
///                         preset: "veryfast",
///                     },
///                 },
///             },
///             {
///                 key: "audio-stream0",
///                 audioStream: {
///                     codec: "aac",
///                     bitrateBps: 64000,
///                     channelCount: 2,
///                     channelLayouts: [
///                         "fl",
///                         "fr",
///                     ],
///                     sampleRateHertz: 48000,
///                 },
///             },
///         ],
///         muxStreams: [
///             {
///                 key: "sd",
///                 fileName: "sd.mp4",
///                 container: "mp4",
///                 elementaryStreams: [
///                     "video-stream0",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 key: "hd",
///                 fileName: "hd.mp4",
///                 container: "mp4",
///                 elementaryStreams: [
///                     "video-stream1",
///                     "audio-stream0",
///                 ],
///             },
///         ],
///         pubsubDestination: {
///             topic: transcoderNotifications.id,
///         },
///         output: {
///             uri: pulumi.interpolate`gs://${_default.name}/outputs/`,
///         },
///     },
///     labels: {
///         label: "key",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.storage.Bucket("default",
///     name="transcoder-job",
///     location="US",
///     force_destroy=True,
///     uniform_bucket_level_access=True,
///     public_access_prevention="enforced")
/// example_mp4 = gcp.storage.BucketObject("example_mp4",
///     name="example.mp4",
///     source=pulumi.FileAsset("./test-fixtures/example.mp4"),
///     bucket=default.name)
/// transcoder_notifications = gcp.pubsub.Topic("transcoder_notifications", name="transcoder-notifications")
/// default_job = gcp.transcoder.Job("default",
///     location="us-central1",
///     config={
///         "inputs": [{
///             "key": "input0",
///             "uri": pulumi.Output.all(
///                 defaultName=default.name,
///                 exampleMp4Name=example_mp4.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['defaultName']}/{resolved_outputs['exampleMp4Name']}")
/// ,
///         }],
///         "edit_lists": [{
///             "key": "atom0",
///             "inputs": ["input0"],
///             "start_time_offset": "0s",
///         }],
///         "ad_breaks": [{
///             "start_time_offset": "3.500s",
///         }],
///         "elementary_streams": [
///             {
///                 "key": "video-stream0",
///                 "video_stream": {
///                     "h264": {
///                         "width_pixels": 640,
///                         "height_pixels": 360,
///                         "bitrate_bps": 550000,
///                         "frame_rate": 60,
///                         "pixel_format": "yuv420p",
///                         "rate_control_mode": "vbr",
///                         "crf_level": 21,
///                         "gop_duration": "3s",
///                         "vbv_size_bits": 550000,
///                         "vbv_fullness_bits": 495000,
///                         "entropy_coder": "cabac",
///                         "profile": "high",
///                         "preset": "veryfast",
///                     },
///                 },
///             },
///             {
///                 "key": "video-stream1",
///                 "video_stream": {
///                     "h264": {
///                         "width_pixels": 1280,
///                         "height_pixels": 720,
///                         "bitrate_bps": 550000,
///                         "frame_rate": 60,
///                         "pixel_format": "yuv420p",
///                         "rate_control_mode": "vbr",
///                         "crf_level": 21,
///                         "gop_duration": "3s",
///                         "vbv_size_bits": 2500000,
///                         "vbv_fullness_bits": 2250000,
///                         "entropy_coder": "cabac",
///                         "profile": "high",
///                         "preset": "veryfast",
///                     },
///                 },
///             },
///             {
///                 "key": "audio-stream0",
///                 "audio_stream": {
///                     "codec": "aac",
///                     "bitrate_bps": 64000,
///                     "channel_count": 2,
///                     "channel_layouts": [
///                         "fl",
///                         "fr",
///                     ],
///                     "sample_rate_hertz": 48000,
///                 },
///             },
///         ],
///         "mux_streams": [
///             {
///                 "key": "sd",
///                 "file_name": "sd.mp4",
///                 "container": "mp4",
///                 "elementary_streams": [
///                     "video-stream0",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 "key": "hd",
///                 "file_name": "hd.mp4",
///                 "container": "mp4",
///                 "elementary_streams": [
///                     "video-stream1",
///                     "audio-stream0",
///                 ],
///             },
///         ],
///         "pubsub_destination": {
///             "topic": transcoder_notifications.id,
///         },
///         "output": {
///             "uri": default.name.apply(lambda name: f"gs://{name}/outputs/"),
///         },
///     },
///     labels={
///         "label": "key",
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
///     var @default = new Gcp.Storage.Bucket("default", new()
///     {
///         Name = "transcoder-job",
///         Location = "US",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///         PublicAccessPrevention = "enforced",
///     });
///
///     var exampleMp4 = new Gcp.Storage.BucketObject("example_mp4", new()
///     {
///         Name = "example.mp4",
///         Source = new FileAsset("./test-fixtures/example.mp4"),
///         Bucket = @default.Name,
///     });
///
///     var transcoderNotifications = new Gcp.PubSub.Topic("transcoder_notifications", new()
///     {
///         Name = "transcoder-notifications",
///     });
///
///     var defaultJob = new Gcp.Transcoder.Job("default", new()
///     {
///         Location = "us-central1",
///         Config = new Gcp.Transcoder.Inputs.JobConfigArgs
///         {
///             Inputs = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigInputArgs
///                 {
///                     Key = "input0",
///                     Uri = Output.Tuple(@default.Name, exampleMp4.Name).Apply(values =>
///                     {
///                         var defaultName = values.Item1;
///                         var exampleMp4Name = values.Item2;
///                         return $"gs://{defaultName}/{exampleMp4Name}";
///                     }),
///                 },
///             },
///             EditLists = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigEditListArgs
///                 {
///                     Key = "atom0",
///                     Inputs = new[]
///                     {
///                         "input0",
///                     },
///                     StartTimeOffset = "0s",
///                 },
///             },
///             AdBreaks = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigAdBreakArgs
///                 {
///                     StartTimeOffset = "3.500s",
///                 },
///             },
///             ElementaryStreams = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigElementaryStreamArgs
///                 {
///                     Key = "video-stream0",
///                     VideoStream = new Gcp.Transcoder.Inputs.JobConfigElementaryStreamVideoStreamArgs
///                     {
///                         H264 = new Gcp.Transcoder.Inputs.JobConfigElementaryStreamVideoStreamH264Args
///                         {
///                             WidthPixels = 640,
///                             HeightPixels = 360,
///                             BitrateBps = 550000,
///                             FrameRate = 60,
///                             PixelFormat = "yuv420p",
///                             RateControlMode = "vbr",
///                             CrfLevel = 21,
///                             GopDuration = "3s",
///                             VbvSizeBits = 550000,
///                             VbvFullnessBits = 495000,
///                             EntropyCoder = "cabac",
///                             Profile = "high",
///                             Preset = "veryfast",
///                         },
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigElementaryStreamArgs
///                 {
///                     Key = "video-stream1",
///                     VideoStream = new Gcp.Transcoder.Inputs.JobConfigElementaryStreamVideoStreamArgs
///                     {
///                         H264 = new Gcp.Transcoder.Inputs.JobConfigElementaryStreamVideoStreamH264Args
///                         {
///                             WidthPixels = 1280,
///                             HeightPixels = 720,
///                             BitrateBps = 550000,
///                             FrameRate = 60,
///                             PixelFormat = "yuv420p",
///                             RateControlMode = "vbr",
///                             CrfLevel = 21,
///                             GopDuration = "3s",
///                             VbvSizeBits = 2500000,
///                             VbvFullnessBits = 2250000,
///                             EntropyCoder = "cabac",
///                             Profile = "high",
///                             Preset = "veryfast",
///                         },
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigElementaryStreamArgs
///                 {
///                     Key = "audio-stream0",
///                     AudioStream = new Gcp.Transcoder.Inputs.JobConfigElementaryStreamAudioStreamArgs
///                     {
///                         Codec = "aac",
///                         BitrateBps = 64000,
///                         ChannelCount = 2,
///                         ChannelLayouts = new[]
///                         {
///                             "fl",
///                             "fr",
///                         },
///                         SampleRateHertz = 48000,
///                     },
///                 },
///             },
///             MuxStreams = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigMuxStreamArgs
///                 {
///                     Key = "sd",
///                     FileName = "sd.mp4",
///                     Container = "mp4",
///                     ElementaryStreams = new[]
///                     {
///                         "video-stream0",
///                         "audio-stream0",
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigMuxStreamArgs
///                 {
///                     Key = "hd",
///                     FileName = "hd.mp4",
///                     Container = "mp4",
///                     ElementaryStreams = new[]
///                     {
///                         "video-stream1",
///                         "audio-stream0",
///                     },
///                 },
///             },
///             PubsubDestination = new Gcp.Transcoder.Inputs.JobConfigPubsubDestinationArgs
///             {
///                 Topic = transcoderNotifications.Id,
///             },
///             Output = new Gcp.Transcoder.Inputs.JobConfigOutputArgs
///             {
///                 Uri = @default.Name.Apply(name => $"gs://{name}/outputs/"),
///             },
///         },
///         Labels =
///         {
///             { "label", "key" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/transcoder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := storage.NewBucket(ctx, "default", &storage.BucketArgs{
/// 			Name:                     pulumi.String("transcoder-job"),
/// 			Location:                 pulumi.String("US"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			PublicAccessPrevention:   pulumi.String("enforced"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMp4, err := storage.NewBucketObject(ctx, "example_mp4", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("example.mp4"),
/// 			Source: pulumi.NewFileAsset("./test-fixtures/example.mp4"),
/// 			Bucket: _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		transcoderNotifications, err := pubsub.NewTopic(ctx, "transcoder_notifications", &pubsub.TopicArgs{
/// 			Name: pulumi.String("transcoder-notifications"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = transcoder.NewJob(ctx, "default", &transcoder.JobArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Config: &transcoder.JobConfigArgs{
/// 				Inputs: transcoder.JobConfigInputTypeArray{
/// 					&transcoder.JobConfigInputTypeArgs{
/// 						Key: pulumi.String("input0"),
/// 						Uri: pulumi.All(_default.Name, exampleMp4.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 							defaultName := _args[0].(string)
/// 							exampleMp4Name := _args[1].(string)
/// 							return fmt.Sprintf("gs://%v/%v", defaultName, exampleMp4Name), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 				EditLists: transcoder.JobConfigEditListArray{
/// 					&transcoder.JobConfigEditListArgs{
/// 						Key: pulumi.String("atom0"),
/// 						Inputs: pulumi.StringArray{
/// 							pulumi.String("input0"),
/// 						},
/// 						StartTimeOffset: pulumi.String("0s"),
/// 					},
/// 				},
/// 				AdBreaks: transcoder.JobConfigAdBreakArray{
/// 					&transcoder.JobConfigAdBreakArgs{
/// 						StartTimeOffset: pulumi.String("3.500s"),
/// 					},
/// 				},
/// 				ElementaryStreams: transcoder.JobConfigElementaryStreamArray{
/// 					&transcoder.JobConfigElementaryStreamArgs{
/// 						Key: pulumi.String("video-stream0"),
/// 						VideoStream: &transcoder.JobConfigElementaryStreamVideoStreamArgs{
/// 							H264: &transcoder.JobConfigElementaryStreamVideoStreamH264Args{
/// 								WidthPixels:     pulumi.Int(640),
/// 								HeightPixels:    pulumi.Int(360),
/// 								BitrateBps:      pulumi.Int(550000),
/// 								FrameRate:       pulumi.Int(60),
/// 								PixelFormat:     pulumi.String("yuv420p"),
/// 								RateControlMode: pulumi.String("vbr"),
/// 								CrfLevel:        pulumi.Int(21),
/// 								GopDuration:     pulumi.String("3s"),
/// 								VbvSizeBits:     pulumi.Int(550000),
/// 								VbvFullnessBits: pulumi.Int(495000),
/// 								EntropyCoder:    pulumi.String("cabac"),
/// 								Profile:         pulumi.String("high"),
/// 								Preset:          pulumi.String("veryfast"),
/// 							},
/// 						},
/// 					},
/// 					&transcoder.JobConfigElementaryStreamArgs{
/// 						Key: pulumi.String("video-stream1"),
/// 						VideoStream: &transcoder.JobConfigElementaryStreamVideoStreamArgs{
/// 							H264: &transcoder.JobConfigElementaryStreamVideoStreamH264Args{
/// 								WidthPixels:     pulumi.Int(1280),
/// 								HeightPixels:    pulumi.Int(720),
/// 								BitrateBps:      pulumi.Int(550000),
/// 								FrameRate:       pulumi.Int(60),
/// 								PixelFormat:     pulumi.String("yuv420p"),
/// 								RateControlMode: pulumi.String("vbr"),
/// 								CrfLevel:        pulumi.Int(21),
/// 								GopDuration:     pulumi.String("3s"),
/// 								VbvSizeBits:     pulumi.Int(2500000),
/// 								VbvFullnessBits: pulumi.Int(2250000),
/// 								EntropyCoder:    pulumi.String("cabac"),
/// 								Profile:         pulumi.String("high"),
/// 								Preset:          pulumi.String("veryfast"),
/// 							},
/// 						},
/// 					},
/// 					&transcoder.JobConfigElementaryStreamArgs{
/// 						Key: pulumi.String("audio-stream0"),
/// 						AudioStream: &transcoder.JobConfigElementaryStreamAudioStreamArgs{
/// 							Codec:        pulumi.String("aac"),
/// 							BitrateBps:   pulumi.Int(64000),
/// 							ChannelCount: pulumi.Int(2),
/// 							ChannelLayouts: pulumi.StringArray{
/// 								pulumi.String("fl"),
/// 								pulumi.String("fr"),
/// 							},
/// 							SampleRateHertz: pulumi.Int(48000),
/// 						},
/// 					},
/// 				},
/// 				MuxStreams: transcoder.JobConfigMuxStreamArray{
/// 					&transcoder.JobConfigMuxStreamArgs{
/// 						Key:       pulumi.String("sd"),
/// 						FileName:  pulumi.String("sd.mp4"),
/// 						Container: pulumi.String("mp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("video-stream0"),
/// 							pulumi.String("audio-stream0"),
/// 						},
/// 					},
/// 					&transcoder.JobConfigMuxStreamArgs{
/// 						Key:       pulumi.String("hd"),
/// 						FileName:  pulumi.String("hd.mp4"),
/// 						Container: pulumi.String("mp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("video-stream1"),
/// 							pulumi.String("audio-stream0"),
/// 						},
/// 					},
/// 				},
/// 				PubsubDestination: &transcoder.JobConfigPubsubDestinationArgs{
/// 					Topic: transcoderNotifications.ID(),
/// 				},
/// 				Output: &transcoder.JobConfigOutputTypeArgs{
/// 					Uri: _default.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("gs://%v/outputs/", name), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.transcoder.Job;
/// import com.pulumi.gcp.transcoder.JobArgs;
/// import com.pulumi.gcp.transcoder.inputs.JobConfigArgs;
/// import com.pulumi.gcp.transcoder.inputs.JobConfigPubsubDestinationArgs;
/// import com.pulumi.gcp.transcoder.inputs.JobConfigOutputArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var default_ = new Bucket("default", BucketArgs.builder()
///             .name("transcoder-job")
///             .location("US")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .publicAccessPrevention("enforced")
///             .build());
///
///         var exampleMp4 = new BucketObject("exampleMp4", BucketObjectArgs.builder()
///             .name("example.mp4")
///             .source(new FileAsset("./test-fixtures/example.mp4"))
///             .bucket(default_.name())
///             .build());
///
///         var transcoderNotifications = new Topic("transcoderNotifications", TopicArgs.builder()
///             .name("transcoder-notifications")
///             .build());
///
///         var defaultJob = new Job("defaultJob", JobArgs.builder()
///             .location("us-central1")
///             .config(JobConfigArgs.builder()
///                 .inputs(JobConfigInputArgs.builder()
///                     .key("input0")
///                     .uri(Output.tuple(default_.name(), exampleMp4.name()).applyValue(values -> {
///                         var defaultName = values.t1;
///                         var exampleMp4Name = values.t2;
///                         return String.format("gs://%s/%s", defaultName,exampleMp4Name);
///                     }))
///                     .build())
///                 .editLists(JobConfigEditListArgs.builder()
///                     .key("atom0")
///                     .inputs("input0")
///                     .startTimeOffset("0s")
///                     .build())
///                 .adBreaks(JobConfigAdBreakArgs.builder()
///                     .startTimeOffset("3.500s")
///                     .build())
///                 .elementaryStreams(
///                     JobConfigElementaryStreamArgs.builder()
///                         .key("video-stream0")
///                         .videoStream(JobConfigElementaryStreamVideoStreamArgs.builder()
///                             .h264(JobConfigElementaryStreamVideoStreamH264Args.builder()
///                                 .widthPixels(640)
///                                 .heightPixels(360)
///                                 .bitrateBps(550000)
///                                 .frameRate(60)
///                                 .pixelFormat("yuv420p")
///                                 .rateControlMode("vbr")
///                                 .crfLevel(21)
///                                 .gopDuration("3s")
///                                 .vbvSizeBits(550000)
///                                 .vbvFullnessBits(495000)
///                                 .entropyCoder("cabac")
///                                 .profile("high")
///                                 .preset("veryfast")
///                                 .build())
///                             .build())
///                         .build(),
///                     JobConfigElementaryStreamArgs.builder()
///                         .key("video-stream1")
///                         .videoStream(JobConfigElementaryStreamVideoStreamArgs.builder()
///                             .h264(JobConfigElementaryStreamVideoStreamH264Args.builder()
///                                 .widthPixels(1280)
///                                 .heightPixels(720)
///                                 .bitrateBps(550000)
///                                 .frameRate(60)
///                                 .pixelFormat("yuv420p")
///                                 .rateControlMode("vbr")
///                                 .crfLevel(21)
///                                 .gopDuration("3s")
///                                 .vbvSizeBits(2500000)
///                                 .vbvFullnessBits(2250000)
///                                 .entropyCoder("cabac")
///                                 .profile("high")
///                                 .preset("veryfast")
///                                 .build())
///                             .build())
///                         .build(),
///                     JobConfigElementaryStreamArgs.builder()
///                         .key("audio-stream0")
///                         .audioStream(JobConfigElementaryStreamAudioStreamArgs.builder()
///                             .codec("aac")
///                             .bitrateBps(64000)
///                             .channelCount(2)
///                             .channelLayouts(
///                                 "fl",
///                                 "fr")
///                             .sampleRateHertz(48000)
///                             .build())
///                         .build())
///                 .muxStreams(
///                     JobConfigMuxStreamArgs.builder()
///                         .key("sd")
///                         .fileName("sd.mp4")
///                         .container("mp4")
///                         .elementaryStreams(
///                             "video-stream0",
///                             "audio-stream0")
///                         .build(),
///                     JobConfigMuxStreamArgs.builder()
///                         .key("hd")
///                         .fileName("hd.mp4")
///                         .container("mp4")
///                         .elementaryStreams(
///                             "video-stream1",
///                             "audio-stream0")
///                         .build())
///                 .pubsubDestination(JobConfigPubsubDestinationArgs.builder()
///                     .topic(transcoderNotifications.id())
///                     .build())
///                 .output(JobConfigOutputArgs.builder()
///                     .uri(default_.name().applyValue(_name -> String.format("gs://%s/outputs/", _name)))
///                     .build())
///                 .build())
///             .labels(Map.of("label", "key"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:storage:Bucket
///     properties:
///       name: transcoder-job
///       location: US
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///       publicAccessPrevention: enforced
///   exampleMp4:
///     type: gcp:storage:BucketObject
///     name: example_mp4
///     properties:
///       name: example.mp4
///       source:
///         fn::FileAsset: ./test-fixtures/example.mp4
///       bucket: ${default.name}
///   transcoderNotifications:
///     type: gcp:pubsub:Topic
///     name: transcoder_notifications
///     properties:
///       name: transcoder-notifications
///   defaultJob:
///     type: gcp:transcoder:Job
///     name: default
///     properties:
///       location: us-central1
///       config:
///         inputs:
///           - key: input0
///             uri: gs://${default.name}/${exampleMp4.name}
///         editLists:
///           - key: atom0
///             inputs:
///               - input0
///             startTimeOffset: 0s
///         adBreaks:
///           - startTimeOffset: 3.500s
///         elementaryStreams:
///           - key: video-stream0
///             videoStream:
///               h264:
///                 widthPixels: 640
///                 heightPixels: 360
///                 bitrateBps: 550000
///                 frameRate: 60
///                 pixelFormat: yuv420p
///                 rateControlMode: vbr
///                 crfLevel: 21
///                 gopDuration: 3s
///                 vbvSizeBits: 550000
///                 vbvFullnessBits: 495000
///                 entropyCoder: cabac
///                 profile: high
///                 preset: veryfast
///           - key: video-stream1
///             videoStream:
///               h264:
///                 widthPixels: 1280
///                 heightPixels: 720
///                 bitrateBps: 550000
///                 frameRate: 60
///                 pixelFormat: yuv420p
///                 rateControlMode: vbr
///                 crfLevel: 21
///                 gopDuration: 3s
///                 vbvSizeBits: 2.5e+06
///                 vbvFullnessBits: 2.25e+06
///                 entropyCoder: cabac
///                 profile: high
///                 preset: veryfast
///           - key: audio-stream0
///             audioStream:
///               codec: aac
///               bitrateBps: 64000
///               channelCount: 2
///               channelLayouts:
///                 - fl
///                 - fr
///               sampleRateHertz: 48000
///         muxStreams:
///           - key: sd
///             fileName: sd.mp4
///             container: mp4
///             elementaryStreams:
///               - video-stream0
///               - audio-stream0
///           - key: hd
///             fileName: hd.mp4
///             container: mp4
///             elementaryStreams:
///               - video-stream1
///               - audio-stream0
///         pubsubDestination:
///           topic: ${transcoderNotifications.id}
///         output:
///           uri: gs://${default.name}/outputs/
///       labels:
///         label: key
/// ```
///
/// ### Transcoder Job Encryptions
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.storage.Bucket("default", {
///     name: "transcoder-job",
///     location: "US",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
///     publicAccessPrevention: "enforced",
/// });
/// const exampleMp4 = new gcp.storage.BucketObject("example_mp4", {
///     name: "example.mp4",
///     source: new pulumi.asset.FileAsset("./test-fixtures/example.mp4"),
///     bucket: _default.name,
/// });
/// const encryptionKey = new gcp.secretmanager.Secret("encryption_key", {
///     secretId: "transcoder-encryption-key",
///     replication: {
///         auto: {},
///     },
/// });
/// const encryptionKeySecretVersion = new gcp.secretmanager.SecretVersion("encryption_key", {
///     secret: encryptionKey.name,
///     secretData: "4A67F2C1B8E93A4F6D3E7890A1BC23DF",
/// });
/// const project = gcp.organizations.getProject({});
/// // this is required to allow the transcoder service identity to access the secret
/// const transcoder = new gcp.projects.ServiceIdentity("transcoder", {
///     project: project.then(project => project.projectId),
///     service: "transcoder.googleapis.com",
/// });
/// const transcoderEncryptionKeyAccessor = new gcp.secretmanager.SecretIamMember("transcoder_encryption_key_accessor", {
///     secretId: encryptionKey.secretId,
///     project: encryptionKey.project,
///     role: "roles/secretmanager.secretAccessor",
///     member: pulumi.interpolate`serviceAccount:${transcoder.email}`,
/// });
/// const defaultJob = new gcp.transcoder.Job("default", {
///     location: "us-central1",
///     config: {
///         inputs: [{
///             key: "input0",
///             uri: pulumi.interpolate`gs://${_default.name}/${exampleMp4.name}`,
///         }],
///         elementaryStreams: [
///             {
///                 key: "es_video",
///                 videoStream: {
///                     h264: {
///                         profile: "main",
///                         heightPixels: 600,
///                         widthPixels: 800,
///                         bitrateBps: 1000000,
///                         frameRate: 60,
///                     },
///                 },
///             },
///             {
///                 key: "es_audio",
///                 audioStream: {
///                     codec: "aac",
///                     channelCount: 2,
///                     bitrateBps: 160000,
///                 },
///             },
///         ],
///         encryptions: [
///             {
///                 id: "aes-128",
///                 secretManagerKeySource: {
///                     secretVersion: encryptionKeySecretVersion.name,
///                 },
///                 drmSystems: {
///                     clearkey: {},
///                 },
///                 aes128: {},
///             },
///             {
///                 id: "cenc",
///                 secretManagerKeySource: {
///                     secretVersion: encryptionKeySecretVersion.name,
///                 },
///                 drmSystems: {
///                     widevine: {},
///                 },
///                 mpegCenc: {
///                     scheme: "cenc",
///                 },
///             },
///             {
///                 id: "cbcs",
///                 secretManagerKeySource: {
///                     secretVersion: encryptionKeySecretVersion.name,
///                 },
///                 drmSystems: {
///                     widevine: {},
///                 },
///                 mpegCenc: {
///                     scheme: "cbcs",
///                 },
///             },
///         ],
///         muxStreams: [
///             {
///                 key: "ts_aes128",
///                 container: "ts",
///                 elementaryStreams: [
///                     "es_video",
///                     "es_audio",
///                 ],
///                 segmentSettings: {
///                     segmentDuration: "6s",
///                 },
///                 encryptionId: "aes-128",
///             },
///             {
///                 key: "fmp4_cenc_video",
///                 container: "fmp4",
///                 elementaryStreams: ["es_video"],
///                 segmentSettings: {
///                     segmentDuration: "6s",
///                 },
///                 encryptionId: "cenc",
///             },
///             {
///                 key: "fmp4_cenc_audio",
///                 container: "fmp4",
///                 elementaryStreams: ["es_audio"],
///                 segmentSettings: {
///                     segmentDuration: "6s",
///                 },
///                 encryptionId: "cenc",
///             },
///             {
///                 key: "fmp4_cbcs_video",
///                 container: "fmp4",
///                 elementaryStreams: ["es_video"],
///                 segmentSettings: {
///                     segmentDuration: "6s",
///                 },
///                 encryptionId: "cbcs",
///             },
///             {
///                 key: "fmp4_cbcs_audio",
///                 container: "fmp4",
///                 elementaryStreams: ["es_audio"],
///                 segmentSettings: {
///                     segmentDuration: "6s",
///                 },
///                 encryptionId: "cbcs",
///             },
///         ],
///         manifests: [
///             {
///                 fileName: "manifest_aes128.m3u8",
///                 type: "HLS",
///                 muxStreams: ["ts_aes128"],
///             },
///             {
///                 fileName: "manifest_cenc.mpd",
///                 type: "DASH",
///                 muxStreams: [
///                     "fmp4_cenc_video",
///                     "fmp4_cenc_audio",
///                 ],
///             },
///             {
///                 fileName: "manifest_cbcs.mpd",
///                 type: "DASH",
///                 muxStreams: [
///                     "fmp4_cbcs_video",
///                     "fmp4_cbcs_audio",
///                 ],
///             },
///         ],
///         output: {
///             uri: pulumi.interpolate`gs://${_default.name}/outputs/`,
///         },
///     },
///     labels: {
///         label: "key",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.storage.Bucket("default",
///     name="transcoder-job",
///     location="US",
///     force_destroy=True,
///     uniform_bucket_level_access=True,
///     public_access_prevention="enforced")
/// example_mp4 = gcp.storage.BucketObject("example_mp4",
///     name="example.mp4",
///     source=pulumi.FileAsset("./test-fixtures/example.mp4"),
///     bucket=default.name)
/// encryption_key = gcp.secretmanager.Secret("encryption_key",
///     secret_id="transcoder-encryption-key",
///     replication={
///         "auto": {},
///     })
/// encryption_key_secret_version = gcp.secretmanager.SecretVersion("encryption_key",
///     secret=encryption_key.name,
///     secret_data="4A67F2C1B8E93A4F6D3E7890A1BC23DF")
/// project = gcp.organizations.get_project()
/// # this is required to allow the transcoder service identity to access the secret
/// transcoder = gcp.projects.ServiceIdentity("transcoder",
///     project=project.project_id,
///     service="transcoder.googleapis.com")
/// transcoder_encryption_key_accessor = gcp.secretmanager.SecretIamMember("transcoder_encryption_key_accessor",
///     secret_id=encryption_key.secret_id,
///     project=encryption_key.project,
///     role="roles/secretmanager.secretAccessor",
///     member=transcoder.email.apply(lambda email: f"serviceAccount:{email}"))
/// default_job = gcp.transcoder.Job("default",
///     location="us-central1",
///     config={
///         "inputs": [{
///             "key": "input0",
///             "uri": pulumi.Output.all(
///                 defaultName=default.name,
///                 exampleMp4Name=example_mp4.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['defaultName']}/{resolved_outputs['exampleMp4Name']}")
/// ,
///         }],
///         "elementary_streams": [
///             {
///                 "key": "es_video",
///                 "video_stream": {
///                     "h264": {
///                         "profile": "main",
///                         "height_pixels": 600,
///                         "width_pixels": 800,
///                         "bitrate_bps": 1000000,
///                         "frame_rate": 60,
///                     },
///                 },
///             },
///             {
///                 "key": "es_audio",
///                 "audio_stream": {
///                     "codec": "aac",
///                     "channel_count": 2,
///                     "bitrate_bps": 160000,
///                 },
///             },
///         ],
///         "encryptions": [
///             {
///                 "id": "aes-128",
///                 "secret_manager_key_source": {
///                     "secret_version": encryption_key_secret_version.name,
///                 },
///                 "drm_systems": {
///                     "clearkey": {},
///                 },
///                 "aes128": {},
///             },
///             {
///                 "id": "cenc",
///                 "secret_manager_key_source": {
///                     "secret_version": encryption_key_secret_version.name,
///                 },
///                 "drm_systems": {
///                     "widevine": {},
///                 },
///                 "mpeg_cenc": {
///                     "scheme": "cenc",
///                 },
///             },
///             {
///                 "id": "cbcs",
///                 "secret_manager_key_source": {
///                     "secret_version": encryption_key_secret_version.name,
///                 },
///                 "drm_systems": {
///                     "widevine": {},
///                 },
///                 "mpeg_cenc": {
///                     "scheme": "cbcs",
///                 },
///             },
///         ],
///         "mux_streams": [
///             {
///                 "key": "ts_aes128",
///                 "container": "ts",
///                 "elementary_streams": [
///                     "es_video",
///                     "es_audio",
///                 ],
///                 "segment_settings": {
///                     "segment_duration": "6s",
///                 },
///                 "encryption_id": "aes-128",
///             },
///             {
///                 "key": "fmp4_cenc_video",
///                 "container": "fmp4",
///                 "elementary_streams": ["es_video"],
///                 "segment_settings": {
///                     "segment_duration": "6s",
///                 },
///                 "encryption_id": "cenc",
///             },
///             {
///                 "key": "fmp4_cenc_audio",
///                 "container": "fmp4",
///                 "elementary_streams": ["es_audio"],
///                 "segment_settings": {
///                     "segment_duration": "6s",
///                 },
///                 "encryption_id": "cenc",
///             },
///             {
///                 "key": "fmp4_cbcs_video",
///                 "container": "fmp4",
///                 "elementary_streams": ["es_video"],
///                 "segment_settings": {
///                     "segment_duration": "6s",
///                 },
///                 "encryption_id": "cbcs",
///             },
///             {
///                 "key": "fmp4_cbcs_audio",
///                 "container": "fmp4",
///                 "elementary_streams": ["es_audio"],
///                 "segment_settings": {
///                     "segment_duration": "6s",
///                 },
///                 "encryption_id": "cbcs",
///             },
///         ],
///         "manifests": [
///             {
///                 "file_name": "manifest_aes128.m3u8",
///                 "type": "HLS",
///                 "mux_streams": ["ts_aes128"],
///             },
///             {
///                 "file_name": "manifest_cenc.mpd",
///                 "type": "DASH",
///                 "mux_streams": [
///                     "fmp4_cenc_video",
///                     "fmp4_cenc_audio",
///                 ],
///             },
///             {
///                 "file_name": "manifest_cbcs.mpd",
///                 "type": "DASH",
///                 "mux_streams": [
///                     "fmp4_cbcs_video",
///                     "fmp4_cbcs_audio",
///                 ],
///             },
///         ],
///         "output": {
///             "uri": default.name.apply(lambda name: f"gs://{name}/outputs/"),
///         },
///     },
///     labels={
///         "label": "key",
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
///     var @default = new Gcp.Storage.Bucket("default", new()
///     {
///         Name = "transcoder-job",
///         Location = "US",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///         PublicAccessPrevention = "enforced",
///     });
///
///     var exampleMp4 = new Gcp.Storage.BucketObject("example_mp4", new()
///     {
///         Name = "example.mp4",
///         Source = new FileAsset("./test-fixtures/example.mp4"),
///         Bucket = @default.Name,
///     });
///
///     var encryptionKey = new Gcp.SecretManager.Secret("encryption_key", new()
///     {
///         SecretId = "transcoder-encryption-key",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var encryptionKeySecretVersion = new Gcp.SecretManager.SecretVersion("encryption_key", new()
///     {
///         Secret = encryptionKey.Name,
///         SecretData = "4A67F2C1B8E93A4F6D3E7890A1BC23DF",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     // this is required to allow the transcoder service identity to access the secret
///     var transcoder = new Gcp.Projects.ServiceIdentity("transcoder", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Service = "transcoder.googleapis.com",
///     });
///
///     var transcoderEncryptionKeyAccessor = new Gcp.SecretManager.SecretIamMember("transcoder_encryption_key_accessor", new()
///     {
///         SecretId = encryptionKey.SecretId,
///         Project = encryptionKey.Project,
///         Role = "roles/secretmanager.secretAccessor",
///         Member = transcoder.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var defaultJob = new Gcp.Transcoder.Job("default", new()
///     {
///         Location = "us-central1",
///         Config = new Gcp.Transcoder.Inputs.JobConfigArgs
///         {
///             Inputs = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigInputArgs
///                 {
///                     Key = "input0",
///                     Uri = Output.Tuple(@default.Name, exampleMp4.Name).Apply(values =>
///                     {
///                         var defaultName = values.Item1;
///                         var exampleMp4Name = values.Item2;
///                         return $"gs://{defaultName}/{exampleMp4Name}";
///                     }),
///                 },
///             },
///             ElementaryStreams = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigElementaryStreamArgs
///                 {
///                     Key = "es_video",
///                     VideoStream = new Gcp.Transcoder.Inputs.JobConfigElementaryStreamVideoStreamArgs
///                     {
///                         H264 = new Gcp.Transcoder.Inputs.JobConfigElementaryStreamVideoStreamH264Args
///                         {
///                             Profile = "main",
///                             HeightPixels = 600,
///                             WidthPixels = 800,
///                             BitrateBps = 1000000,
///                             FrameRate = 60,
///                         },
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigElementaryStreamArgs
///                 {
///                     Key = "es_audio",
///                     AudioStream = new Gcp.Transcoder.Inputs.JobConfigElementaryStreamAudioStreamArgs
///                     {
///                         Codec = "aac",
///                         ChannelCount = 2,
///                         BitrateBps = 160000,
///                     },
///                 },
///             },
///             Encryptions = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigEncryptionArgs
///                 {
///                     Id = "aes-128",
///                     SecretManagerKeySource = new Gcp.Transcoder.Inputs.JobConfigEncryptionSecretManagerKeySourceArgs
///                     {
///                         SecretVersion = encryptionKeySecretVersion.Name,
///                     },
///                     DrmSystems = new Gcp.Transcoder.Inputs.JobConfigEncryptionDrmSystemsArgs
///                     {
///                         Clearkey = null,
///                     },
///                     Aes128 = null,
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigEncryptionArgs
///                 {
///                     Id = "cenc",
///                     SecretManagerKeySource = new Gcp.Transcoder.Inputs.JobConfigEncryptionSecretManagerKeySourceArgs
///                     {
///                         SecretVersion = encryptionKeySecretVersion.Name,
///                     },
///                     DrmSystems = new Gcp.Transcoder.Inputs.JobConfigEncryptionDrmSystemsArgs
///                     {
///                         Widevine = null,
///                     },
///                     MpegCenc = new Gcp.Transcoder.Inputs.JobConfigEncryptionMpegCencArgs
///                     {
///                         Scheme = "cenc",
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigEncryptionArgs
///                 {
///                     Id = "cbcs",
///                     SecretManagerKeySource = new Gcp.Transcoder.Inputs.JobConfigEncryptionSecretManagerKeySourceArgs
///                     {
///                         SecretVersion = encryptionKeySecretVersion.Name,
///                     },
///                     DrmSystems = new Gcp.Transcoder.Inputs.JobConfigEncryptionDrmSystemsArgs
///                     {
///                         Widevine = null,
///                     },
///                     MpegCenc = new Gcp.Transcoder.Inputs.JobConfigEncryptionMpegCencArgs
///                     {
///                         Scheme = "cbcs",
///                     },
///                 },
///             },
///             MuxStreams = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigMuxStreamArgs
///                 {
///                     Key = "ts_aes128",
///                     Container = "ts",
///                     ElementaryStreams = new[]
///                     {
///                         "es_video",
///                         "es_audio",
///                     },
///                     SegmentSettings = new Gcp.Transcoder.Inputs.JobConfigMuxStreamSegmentSettingsArgs
///                     {
///                         SegmentDuration = "6s",
///                     },
///                     EncryptionId = "aes-128",
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigMuxStreamArgs
///                 {
///                     Key = "fmp4_cenc_video",
///                     Container = "fmp4",
///                     ElementaryStreams = new[]
///                     {
///                         "es_video",
///                     },
///                     SegmentSettings = new Gcp.Transcoder.Inputs.JobConfigMuxStreamSegmentSettingsArgs
///                     {
///                         SegmentDuration = "6s",
///                     },
///                     EncryptionId = "cenc",
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigMuxStreamArgs
///                 {
///                     Key = "fmp4_cenc_audio",
///                     Container = "fmp4",
///                     ElementaryStreams = new[]
///                     {
///                         "es_audio",
///                     },
///                     SegmentSettings = new Gcp.Transcoder.Inputs.JobConfigMuxStreamSegmentSettingsArgs
///                     {
///                         SegmentDuration = "6s",
///                     },
///                     EncryptionId = "cenc",
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigMuxStreamArgs
///                 {
///                     Key = "fmp4_cbcs_video",
///                     Container = "fmp4",
///                     ElementaryStreams = new[]
///                     {
///                         "es_video",
///                     },
///                     SegmentSettings = new Gcp.Transcoder.Inputs.JobConfigMuxStreamSegmentSettingsArgs
///                     {
///                         SegmentDuration = "6s",
///                     },
///                     EncryptionId = "cbcs",
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigMuxStreamArgs
///                 {
///                     Key = "fmp4_cbcs_audio",
///                     Container = "fmp4",
///                     ElementaryStreams = new[]
///                     {
///                         "es_audio",
///                     },
///                     SegmentSettings = new Gcp.Transcoder.Inputs.JobConfigMuxStreamSegmentSettingsArgs
///                     {
///                         SegmentDuration = "6s",
///                     },
///                     EncryptionId = "cbcs",
///                 },
///             },
///             Manifests = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigManifestArgs
///                 {
///                     FileName = "manifest_aes128.m3u8",
///                     Type = "HLS",
///                     MuxStreams = new[]
///                     {
///                         "ts_aes128",
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigManifestArgs
///                 {
///                     FileName = "manifest_cenc.mpd",
///                     Type = "DASH",
///                     MuxStreams = new[]
///                     {
///                         "fmp4_cenc_video",
///                         "fmp4_cenc_audio",
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigManifestArgs
///                 {
///                     FileName = "manifest_cbcs.mpd",
///                     Type = "DASH",
///                     MuxStreams = new[]
///                     {
///                         "fmp4_cbcs_video",
///                         "fmp4_cbcs_audio",
///                     },
///                 },
///             },
///             Output = new Gcp.Transcoder.Inputs.JobConfigOutputArgs
///             {
///                 Uri = @default.Name.Apply(name => $"gs://{name}/outputs/"),
///             },
///         },
///         Labels =
///         {
///             { "label", "key" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/transcoder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := storage.NewBucket(ctx, "default", &storage.BucketArgs{
/// 			Name:                     pulumi.String("transcoder-job"),
/// 			Location:                 pulumi.String("US"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			PublicAccessPrevention:   pulumi.String("enforced"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMp4, err := storage.NewBucketObject(ctx, "example_mp4", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("example.mp4"),
/// 			Source: pulumi.NewFileAsset("./test-fixtures/example.mp4"),
/// 			Bucket: _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		encryptionKey, err := secretmanager.NewSecret(ctx, "encryption_key", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("transcoder-encryption-key"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		encryptionKeySecretVersion, err := secretmanager.NewSecretVersion(ctx, "encryption_key", &secretmanager.SecretVersionArgs{
/// 			Secret:     encryptionKey.Name,
/// 			SecretData: pulumi.String("4A67F2C1B8E93A4F6D3E7890A1BC23DF"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// this is required to allow the transcoder service identity to access the secret
/// 		transcoder, err := projects.NewServiceIdentity(ctx, "transcoder", &projects.ServiceIdentityArgs{
/// 			Project: pulumi.String(project.ProjectId),
/// 			Service: pulumi.String("transcoder.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretIamMember(ctx, "transcoder_encryption_key_accessor", &secretmanager.SecretIamMemberArgs{
/// 			SecretId: encryptionKey.SecretId,
/// 			Project:  encryptionKey.Project,
/// 			Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// 			Member: transcoder.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = transcoder.NewJob(ctx, "default", &transcoder.JobArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Config: &transcoder.JobConfigArgs{
/// 				Inputs: transcoder.JobConfigInputTypeArray{
/// 					&transcoder.JobConfigInputTypeArgs{
/// 						Key: pulumi.String("input0"),
/// 						Uri: pulumi.All(_default.Name, exampleMp4.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 							defaultName := _args[0].(string)
/// 							exampleMp4Name := _args[1].(string)
/// 							return fmt.Sprintf("gs://%v/%v", defaultName, exampleMp4Name), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 				ElementaryStreams: transcoder.JobConfigElementaryStreamArray{
/// 					&transcoder.JobConfigElementaryStreamArgs{
/// 						Key: pulumi.String("es_video"),
/// 						VideoStream: &transcoder.JobConfigElementaryStreamVideoStreamArgs{
/// 							H264: &transcoder.JobConfigElementaryStreamVideoStreamH264Args{
/// 								Profile:      pulumi.String("main"),
/// 								HeightPixels: pulumi.Int(600),
/// 								WidthPixels:  pulumi.Int(800),
/// 								BitrateBps:   pulumi.Int(1000000),
/// 								FrameRate:    pulumi.Int(60),
/// 							},
/// 						},
/// 					},
/// 					&transcoder.JobConfigElementaryStreamArgs{
/// 						Key: pulumi.String("es_audio"),
/// 						AudioStream: &transcoder.JobConfigElementaryStreamAudioStreamArgs{
/// 							Codec:        pulumi.String("aac"),
/// 							ChannelCount: pulumi.Int(2),
/// 							BitrateBps:   pulumi.Int(160000),
/// 						},
/// 					},
/// 				},
/// 				Encryptions: transcoder.JobConfigEncryptionArray{
/// 					&transcoder.JobConfigEncryptionArgs{
/// 						Id: pulumi.String("aes-128"),
/// 						SecretManagerKeySource: &transcoder.JobConfigEncryptionSecretManagerKeySourceArgs{
/// 							SecretVersion: encryptionKeySecretVersion.Name,
/// 						},
/// 						DrmSystems: &transcoder.JobConfigEncryptionDrmSystemsArgs{
/// 							Clearkey: &transcoder.JobConfigEncryptionDrmSystemsClearkeyArgs{},
/// 						},
/// 						Aes128: &transcoder.JobConfigEncryptionAes128Args{},
/// 					},
/// 					&transcoder.JobConfigEncryptionArgs{
/// 						Id: pulumi.String("cenc"),
/// 						SecretManagerKeySource: &transcoder.JobConfigEncryptionSecretManagerKeySourceArgs{
/// 							SecretVersion: encryptionKeySecretVersion.Name,
/// 						},
/// 						DrmSystems: &transcoder.JobConfigEncryptionDrmSystemsArgs{
/// 							Widevine: &transcoder.JobConfigEncryptionDrmSystemsWidevineArgs{},
/// 						},
/// 						MpegCenc: &transcoder.JobConfigEncryptionMpegCencArgs{
/// 							Scheme: pulumi.String("cenc"),
/// 						},
/// 					},
/// 					&transcoder.JobConfigEncryptionArgs{
/// 						Id: pulumi.String("cbcs"),
/// 						SecretManagerKeySource: &transcoder.JobConfigEncryptionSecretManagerKeySourceArgs{
/// 							SecretVersion: encryptionKeySecretVersion.Name,
/// 						},
/// 						DrmSystems: &transcoder.JobConfigEncryptionDrmSystemsArgs{
/// 							Widevine: &transcoder.JobConfigEncryptionDrmSystemsWidevineArgs{},
/// 						},
/// 						MpegCenc: &transcoder.JobConfigEncryptionMpegCencArgs{
/// 							Scheme: pulumi.String("cbcs"),
/// 						},
/// 					},
/// 				},
/// 				MuxStreams: transcoder.JobConfigMuxStreamArray{
/// 					&transcoder.JobConfigMuxStreamArgs{
/// 						Key:       pulumi.String("ts_aes128"),
/// 						Container: pulumi.String("ts"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("es_video"),
/// 							pulumi.String("es_audio"),
/// 						},
/// 						SegmentSettings: &transcoder.JobConfigMuxStreamSegmentSettingsArgs{
/// 							SegmentDuration: pulumi.String("6s"),
/// 						},
/// 						EncryptionId: pulumi.String("aes-128"),
/// 					},
/// 					&transcoder.JobConfigMuxStreamArgs{
/// 						Key:       pulumi.String("fmp4_cenc_video"),
/// 						Container: pulumi.String("fmp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("es_video"),
/// 						},
/// 						SegmentSettings: &transcoder.JobConfigMuxStreamSegmentSettingsArgs{
/// 							SegmentDuration: pulumi.String("6s"),
/// 						},
/// 						EncryptionId: pulumi.String("cenc"),
/// 					},
/// 					&transcoder.JobConfigMuxStreamArgs{
/// 						Key:       pulumi.String("fmp4_cenc_audio"),
/// 						Container: pulumi.String("fmp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("es_audio"),
/// 						},
/// 						SegmentSettings: &transcoder.JobConfigMuxStreamSegmentSettingsArgs{
/// 							SegmentDuration: pulumi.String("6s"),
/// 						},
/// 						EncryptionId: pulumi.String("cenc"),
/// 					},
/// 					&transcoder.JobConfigMuxStreamArgs{
/// 						Key:       pulumi.String("fmp4_cbcs_video"),
/// 						Container: pulumi.String("fmp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("es_video"),
/// 						},
/// 						SegmentSettings: &transcoder.JobConfigMuxStreamSegmentSettingsArgs{
/// 							SegmentDuration: pulumi.String("6s"),
/// 						},
/// 						EncryptionId: pulumi.String("cbcs"),
/// 					},
/// 					&transcoder.JobConfigMuxStreamArgs{
/// 						Key:       pulumi.String("fmp4_cbcs_audio"),
/// 						Container: pulumi.String("fmp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("es_audio"),
/// 						},
/// 						SegmentSettings: &transcoder.JobConfigMuxStreamSegmentSettingsArgs{
/// 							SegmentDuration: pulumi.String("6s"),
/// 						},
/// 						EncryptionId: pulumi.String("cbcs"),
/// 					},
/// 				},
/// 				Manifests: transcoder.JobConfigManifestArray{
/// 					&transcoder.JobConfigManifestArgs{
/// 						FileName: pulumi.String("manifest_aes128.m3u8"),
/// 						Type:     pulumi.String("HLS"),
/// 						MuxStreams: pulumi.StringArray{
/// 							pulumi.String("ts_aes128"),
/// 						},
/// 					},
/// 					&transcoder.JobConfigManifestArgs{
/// 						FileName: pulumi.String("manifest_cenc.mpd"),
/// 						Type:     pulumi.String("DASH"),
/// 						MuxStreams: pulumi.StringArray{
/// 							pulumi.String("fmp4_cenc_video"),
/// 							pulumi.String("fmp4_cenc_audio"),
/// 						},
/// 					},
/// 					&transcoder.JobConfigManifestArgs{
/// 						FileName: pulumi.String("manifest_cbcs.mpd"),
/// 						Type:     pulumi.String("DASH"),
/// 						MuxStreams: pulumi.StringArray{
/// 							pulumi.String("fmp4_cbcs_video"),
/// 							pulumi.String("fmp4_cbcs_audio"),
/// 						},
/// 					},
/// 				},
/// 				Output: &transcoder.JobConfigOutputTypeArgs{
/// 					Uri: _default.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("gs://%v/outputs/", name), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamMember;
/// import com.pulumi.gcp.secretmanager.SecretIamMemberArgs;
/// import com.pulumi.gcp.transcoder.Job;
/// import com.pulumi.gcp.transcoder.JobArgs;
/// import com.pulumi.gcp.transcoder.inputs.JobConfigArgs;
/// import com.pulumi.gcp.transcoder.inputs.JobConfigOutputArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var default_ = new Bucket("default", BucketArgs.builder()
///             .name("transcoder-job")
///             .location("US")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .publicAccessPrevention("enforced")
///             .build());
///
///         var exampleMp4 = new BucketObject("exampleMp4", BucketObjectArgs.builder()
///             .name("example.mp4")
///             .source(new FileAsset("./test-fixtures/example.mp4"))
///             .bucket(default_.name())
///             .build());
///
///         var encryptionKey = new Secret("encryptionKey", SecretArgs.builder()
///             .secretId("transcoder-encryption-key")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var encryptionKeySecretVersion = new SecretVersion("encryptionKeySecretVersion", SecretVersionArgs.builder()
///             .secret(encryptionKey.name())
///             .secretData("4A67F2C1B8E93A4F6D3E7890A1BC23DF")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         // this is required to allow the transcoder service identity to access the secret
///         var transcoder = new ServiceIdentity("transcoder", ServiceIdentityArgs.builder()
///             .project(project.projectId())
///             .service("transcoder.googleapis.com")
///             .build());
///
///         var transcoderEncryptionKeyAccessor = new SecretIamMember("transcoderEncryptionKeyAccessor", SecretIamMemberArgs.builder()
///             .secretId(encryptionKey.secretId())
///             .project(encryptionKey.project())
///             .role("roles/secretmanager.secretAccessor")
///             .member(transcoder.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var defaultJob = new Job("defaultJob", JobArgs.builder()
///             .location("us-central1")
///             .config(JobConfigArgs.builder()
///                 .inputs(JobConfigInputArgs.builder()
///                     .key("input0")
///                     .uri(Output.tuple(default_.name(), exampleMp4.name()).applyValue(values -> {
///                         var defaultName = values.t1;
///                         var exampleMp4Name = values.t2;
///                         return String.format("gs://%s/%s", defaultName,exampleMp4Name);
///                     }))
///                     .build())
///                 .elementaryStreams(
///                     JobConfigElementaryStreamArgs.builder()
///                         .key("es_video")
///                         .videoStream(JobConfigElementaryStreamVideoStreamArgs.builder()
///                             .h264(JobConfigElementaryStreamVideoStreamH264Args.builder()
///                                 .profile("main")
///                                 .heightPixels(600)
///                                 .widthPixels(800)
///                                 .bitrateBps(1000000)
///                                 .frameRate(60)
///                                 .build())
///                             .build())
///                         .build(),
///                     JobConfigElementaryStreamArgs.builder()
///                         .key("es_audio")
///                         .audioStream(JobConfigElementaryStreamAudioStreamArgs.builder()
///                             .codec("aac")
///                             .channelCount(2)
///                             .bitrateBps(160000)
///                             .build())
///                         .build())
///                 .encryptions(
///                     JobConfigEncryptionArgs.builder()
///                         .id("aes-128")
///                         .secretManagerKeySource(JobConfigEncryptionSecretManagerKeySourceArgs.builder()
///                             .secretVersion(encryptionKeySecretVersion.name())
///                             .build())
///                         .drmSystems(JobConfigEncryptionDrmSystemsArgs.builder()
///                             .clearkey(JobConfigEncryptionDrmSystemsClearkeyArgs.builder()
///                                 .build())
///                             .build())
///                         .aes128(JobConfigEncryptionAes128Args.builder()
///                             .build())
///                         .build(),
///                     JobConfigEncryptionArgs.builder()
///                         .id("cenc")
///                         .secretManagerKeySource(JobConfigEncryptionSecretManagerKeySourceArgs.builder()
///                             .secretVersion(encryptionKeySecretVersion.name())
///                             .build())
///                         .drmSystems(JobConfigEncryptionDrmSystemsArgs.builder()
///                             .widevine(JobConfigEncryptionDrmSystemsWidevineArgs.builder()
///                                 .build())
///                             .build())
///                         .mpegCenc(JobConfigEncryptionMpegCencArgs.builder()
///                             .scheme("cenc")
///                             .build())
///                         .build(),
///                     JobConfigEncryptionArgs.builder()
///                         .id("cbcs")
///                         .secretManagerKeySource(JobConfigEncryptionSecretManagerKeySourceArgs.builder()
///                             .secretVersion(encryptionKeySecretVersion.name())
///                             .build())
///                         .drmSystems(JobConfigEncryptionDrmSystemsArgs.builder()
///                             .widevine(JobConfigEncryptionDrmSystemsWidevineArgs.builder()
///                                 .build())
///                             .build())
///                         .mpegCenc(JobConfigEncryptionMpegCencArgs.builder()
///                             .scheme("cbcs")
///                             .build())
///                         .build())
///                 .muxStreams(
///                     JobConfigMuxStreamArgs.builder()
///                         .key("ts_aes128")
///                         .container("ts")
///                         .elementaryStreams(
///                             "es_video",
///                             "es_audio")
///                         .segmentSettings(JobConfigMuxStreamSegmentSettingsArgs.builder()
///                             .segmentDuration("6s")
///                             .build())
///                         .encryptionId("aes-128")
///                         .build(),
///                     JobConfigMuxStreamArgs.builder()
///                         .key("fmp4_cenc_video")
///                         .container("fmp4")
///                         .elementaryStreams("es_video")
///                         .segmentSettings(JobConfigMuxStreamSegmentSettingsArgs.builder()
///                             .segmentDuration("6s")
///                             .build())
///                         .encryptionId("cenc")
///                         .build(),
///                     JobConfigMuxStreamArgs.builder()
///                         .key("fmp4_cenc_audio")
///                         .container("fmp4")
///                         .elementaryStreams("es_audio")
///                         .segmentSettings(JobConfigMuxStreamSegmentSettingsArgs.builder()
///                             .segmentDuration("6s")
///                             .build())
///                         .encryptionId("cenc")
///                         .build(),
///                     JobConfigMuxStreamArgs.builder()
///                         .key("fmp4_cbcs_video")
///                         .container("fmp4")
///                         .elementaryStreams("es_video")
///                         .segmentSettings(JobConfigMuxStreamSegmentSettingsArgs.builder()
///                             .segmentDuration("6s")
///                             .build())
///                         .encryptionId("cbcs")
///                         .build(),
///                     JobConfigMuxStreamArgs.builder()
///                         .key("fmp4_cbcs_audio")
///                         .container("fmp4")
///                         .elementaryStreams("es_audio")
///                         .segmentSettings(JobConfigMuxStreamSegmentSettingsArgs.builder()
///                             .segmentDuration("6s")
///                             .build())
///                         .encryptionId("cbcs")
///                         .build())
///                 .manifests(
///                     JobConfigManifestArgs.builder()
///                         .fileName("manifest_aes128.m3u8")
///                         .type("HLS")
///                         .muxStreams("ts_aes128")
///                         .build(),
///                     JobConfigManifestArgs.builder()
///                         .fileName("manifest_cenc.mpd")
///                         .type("DASH")
///                         .muxStreams(
///                             "fmp4_cenc_video",
///                             "fmp4_cenc_audio")
///                         .build(),
///                     JobConfigManifestArgs.builder()
///                         .fileName("manifest_cbcs.mpd")
///                         .type("DASH")
///                         .muxStreams(
///                             "fmp4_cbcs_video",
///                             "fmp4_cbcs_audio")
///                         .build())
///                 .output(JobConfigOutputArgs.builder()
///                     .uri(default_.name().applyValue(_name -> String.format("gs://%s/outputs/", _name)))
///                     .build())
///                 .build())
///             .labels(Map.of("label", "key"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:storage:Bucket
///     properties:
///       name: transcoder-job
///       location: US
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///       publicAccessPrevention: enforced
///   exampleMp4:
///     type: gcp:storage:BucketObject
///     name: example_mp4
///     properties:
///       name: example.mp4
///       source:
///         fn::FileAsset: ./test-fixtures/example.mp4
///       bucket: ${default.name}
///   encryptionKey:
///     type: gcp:secretmanager:Secret
///     name: encryption_key
///     properties:
///       secretId: transcoder-encryption-key
///       replication:
///         auto: {}
///   encryptionKeySecretVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: encryption_key
///     properties:
///       secret: ${encryptionKey.name}
///       secretData: 4A67F2C1B8E93A4F6D3E7890A1BC23DF
///   # this is required to allow the transcoder service identity to access the secret
///   transcoder:
///     type: gcp:projects:ServiceIdentity
///     properties:
///       project: ${project.projectId}
///       service: transcoder.googleapis.com
///   transcoderEncryptionKeyAccessor:
///     type: gcp:secretmanager:SecretIamMember
///     name: transcoder_encryption_key_accessor
///     properties:
///       secretId: ${encryptionKey.secretId}
///       project: ${encryptionKey.project}
///       role: roles/secretmanager.secretAccessor
///       member: serviceAccount:${transcoder.email}
///   defaultJob:
///     type: gcp:transcoder:Job
///     name: default
///     properties:
///       location: us-central1
///       config:
///         inputs:
///           - key: input0
///             uri: gs://${default.name}/${exampleMp4.name}
///         elementaryStreams:
///           - key: es_video
///             videoStream:
///               h264:
///                 profile: main
///                 heightPixels: 600
///                 widthPixels: 800
///                 bitrateBps: 1e+06
///                 frameRate: 60
///           - key: es_audio
///             audioStream:
///               codec: aac
///               channelCount: 2
///               bitrateBps: 160000
///         encryptions:
///           - id: aes-128
///             secretManagerKeySource:
///               secretVersion: ${encryptionKeySecretVersion.name}
///             drmSystems:
///               clearkey: {}
///             aes128: {}
///           - id: cenc
///             secretManagerKeySource:
///               secretVersion: ${encryptionKeySecretVersion.name}
///             drmSystems:
///               widevine: {}
///             mpegCenc:
///               scheme: cenc
///           - id: cbcs
///             secretManagerKeySource:
///               secretVersion: ${encryptionKeySecretVersion.name}
///             drmSystems:
///               widevine: {}
///             mpegCenc:
///               scheme: cbcs
///         muxStreams:
///           - key: ts_aes128
///             container: ts
///             elementaryStreams:
///               - es_video
///               - es_audio
///             segmentSettings:
///               segmentDuration: 6s
///             encryptionId: aes-128
///           - key: fmp4_cenc_video
///             container: fmp4
///             elementaryStreams:
///               - es_video
///             segmentSettings:
///               segmentDuration: 6s
///             encryptionId: cenc
///           - key: fmp4_cenc_audio
///             container: fmp4
///             elementaryStreams:
///               - es_audio
///             segmentSettings:
///               segmentDuration: 6s
///             encryptionId: cenc
///           - key: fmp4_cbcs_video
///             container: fmp4
///             elementaryStreams:
///               - es_video
///             segmentSettings:
///               segmentDuration: 6s
///             encryptionId: cbcs
///           - key: fmp4_cbcs_audio
///             container: fmp4
///             elementaryStreams:
///               - es_audio
///             segmentSettings:
///               segmentDuration: 6s
///             encryptionId: cbcs
///         manifests:
///           - fileName: manifest_aes128.m3u8
///             type: HLS
///             muxStreams:
///               - ts_aes128
///           - fileName: manifest_cenc.mpd
///             type: DASH
///             muxStreams:
///               - fmp4_cenc_video
///               - fmp4_cenc_audio
///           - fileName: manifest_cbcs.mpd
///             type: DASH
///             muxStreams:
///               - fmp4_cbcs_video
///               - fmp4_cbcs_audio
///         output:
///           uri: gs://${default.name}/outputs/
///       labels:
///         label: key
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Transcoder Job Overlays
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.storage.Bucket("default", {
///     name: "transcoder-job",
///     location: "US",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
///     publicAccessPrevention: "enforced",
/// });
/// const exampleMp4 = new gcp.storage.BucketObject("example_mp4", {
///     name: "example.mp4",
///     source: new pulumi.asset.FileAsset("./test-fixtures/example.mp4"),
///     bucket: _default.name,
/// });
/// const overlayPng = new gcp.storage.BucketObject("overlay_png", {
///     name: "overlay.png",
///     source: new pulumi.asset.FileAsset("./test-fixtures/overlay.png"),
///     bucket: _default.name,
/// });
/// const defaultJob = new gcp.transcoder.Job("default", {
///     location: "us-central1",
///     config: {
///         inputs: [{
///             key: "input0",
///             uri: pulumi.interpolate`gs://${_default.name}/${exampleMp4.name}`,
///         }],
///         editLists: [{
///             key: "atom0",
///             inputs: ["input0"],
///             startTimeOffset: "0s",
///         }],
///         adBreaks: [{
///             startTimeOffset: "3.500s",
///         }],
///         overlays: [{
///             animations: [{
///                 animationFade: {
///                     fadeType: "FADE_IN",
///                     startTimeOffset: "1.500s",
///                     endTimeOffset: "3.500s",
///                     xy: {
///                         x: 1,
///                         y: 0.5,
///                     },
///                 },
///             }],
///             image: {
///                 uri: pulumi.interpolate`gs://${_default.name}/${overlayPng.name}`,
///             },
///         }],
///         elementaryStreams: [
///             {
///                 key: "video-stream0",
///                 videoStream: {
///                     h264: {
///                         widthPixels: 640,
///                         heightPixels: 360,
///                         bitrateBps: 550000,
///                         frameRate: 60,
///                         pixelFormat: "yuv420p",
///                         rateControlMode: "vbr",
///                         crfLevel: 21,
///                         gopDuration: "3s",
///                         vbvSizeBits: 550000,
///                         vbvFullnessBits: 495000,
///                         entropyCoder: "cabac",
///                         profile: "high",
///                         preset: "veryfast",
///                     },
///                 },
///             },
///             {
///                 key: "video-stream1",
///                 videoStream: {
///                     h264: {
///                         widthPixels: 1280,
///                         heightPixels: 720,
///                         bitrateBps: 550000,
///                         frameRate: 60,
///                         pixelFormat: "yuv420p",
///                         rateControlMode: "vbr",
///                         crfLevel: 21,
///                         gopDuration: "3s",
///                         vbvSizeBits: 2500000,
///                         vbvFullnessBits: 2250000,
///                         entropyCoder: "cabac",
///                         profile: "high",
///                         preset: "veryfast",
///                     },
///                 },
///             },
///             {
///                 key: "audio-stream0",
///                 audioStream: {
///                     codec: "aac",
///                     bitrateBps: 64000,
///                     channelCount: 2,
///                     channelLayouts: [
///                         "fl",
///                         "fr",
///                     ],
///                     sampleRateHertz: 48000,
///                 },
///             },
///         ],
///         muxStreams: [
///             {
///                 key: "sd",
///                 fileName: "sd.mp4",
///                 container: "mp4",
///                 elementaryStreams: [
///                     "video-stream0",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 key: "hd",
///                 fileName: "hd.mp4",
///                 container: "mp4",
///                 elementaryStreams: [
///                     "video-stream1",
///                     "audio-stream0",
///                 ],
///             },
///         ],
///         output: {
///             uri: pulumi.interpolate`gs://${_default.name}/outputs/`,
///         },
///     },
///     labels: {
///         label: "key",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.storage.Bucket("default",
///     name="transcoder-job",
///     location="US",
///     force_destroy=True,
///     uniform_bucket_level_access=True,
///     public_access_prevention="enforced")
/// example_mp4 = gcp.storage.BucketObject("example_mp4",
///     name="example.mp4",
///     source=pulumi.FileAsset("./test-fixtures/example.mp4"),
///     bucket=default.name)
/// overlay_png = gcp.storage.BucketObject("overlay_png",
///     name="overlay.png",
///     source=pulumi.FileAsset("./test-fixtures/overlay.png"),
///     bucket=default.name)
/// default_job = gcp.transcoder.Job("default",
///     location="us-central1",
///     config={
///         "inputs": [{
///             "key": "input0",
///             "uri": pulumi.Output.all(
///                 defaultName=default.name,
///                 exampleMp4Name=example_mp4.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['defaultName']}/{resolved_outputs['exampleMp4Name']}")
/// ,
///         }],
///         "edit_lists": [{
///             "key": "atom0",
///             "inputs": ["input0"],
///             "start_time_offset": "0s",
///         }],
///         "ad_breaks": [{
///             "start_time_offset": "3.500s",
///         }],
///         "overlays": [{
///             "animations": [{
///                 "animation_fade": {
///                     "fade_type": "FADE_IN",
///                     "start_time_offset": "1.500s",
///                     "end_time_offset": "3.500s",
///                     "xy": {
///                         "x": 1,
///                         "y": 0.5,
///                     },
///                 },
///             }],
///             "image": {
///                 "uri": pulumi.Output.all(
///                     defaultName=default.name,
///                     overlayPngName=overlay_png.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['defaultName']}/{resolved_outputs['overlayPngName']}")
/// ,
///             },
///         }],
///         "elementary_streams": [
///             {
///                 "key": "video-stream0",
///                 "video_stream": {
///                     "h264": {
///                         "width_pixels": 640,
///                         "height_pixels": 360,
///                         "bitrate_bps": 550000,
///                         "frame_rate": 60,
///                         "pixel_format": "yuv420p",
///                         "rate_control_mode": "vbr",
///                         "crf_level": 21,
///                         "gop_duration": "3s",
///                         "vbv_size_bits": 550000,
///                         "vbv_fullness_bits": 495000,
///                         "entropy_coder": "cabac",
///                         "profile": "high",
///                         "preset": "veryfast",
///                     },
///                 },
///             },
///             {
///                 "key": "video-stream1",
///                 "video_stream": {
///                     "h264": {
///                         "width_pixels": 1280,
///                         "height_pixels": 720,
///                         "bitrate_bps": 550000,
///                         "frame_rate": 60,
///                         "pixel_format": "yuv420p",
///                         "rate_control_mode": "vbr",
///                         "crf_level": 21,
///                         "gop_duration": "3s",
///                         "vbv_size_bits": 2500000,
///                         "vbv_fullness_bits": 2250000,
///                         "entropy_coder": "cabac",
///                         "profile": "high",
///                         "preset": "veryfast",
///                     },
///                 },
///             },
///             {
///                 "key": "audio-stream0",
///                 "audio_stream": {
///                     "codec": "aac",
///                     "bitrate_bps": 64000,
///                     "channel_count": 2,
///                     "channel_layouts": [
///                         "fl",
///                         "fr",
///                     ],
///                     "sample_rate_hertz": 48000,
///                 },
///             },
///         ],
///         "mux_streams": [
///             {
///                 "key": "sd",
///                 "file_name": "sd.mp4",
///                 "container": "mp4",
///                 "elementary_streams": [
///                     "video-stream0",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 "key": "hd",
///                 "file_name": "hd.mp4",
///                 "container": "mp4",
///                 "elementary_streams": [
///                     "video-stream1",
///                     "audio-stream0",
///                 ],
///             },
///         ],
///         "output": {
///             "uri": default.name.apply(lambda name: f"gs://{name}/outputs/"),
///         },
///     },
///     labels={
///         "label": "key",
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
///     var @default = new Gcp.Storage.Bucket("default", new()
///     {
///         Name = "transcoder-job",
///         Location = "US",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///         PublicAccessPrevention = "enforced",
///     });
///
///     var exampleMp4 = new Gcp.Storage.BucketObject("example_mp4", new()
///     {
///         Name = "example.mp4",
///         Source = new FileAsset("./test-fixtures/example.mp4"),
///         Bucket = @default.Name,
///     });
///
///     var overlayPng = new Gcp.Storage.BucketObject("overlay_png", new()
///     {
///         Name = "overlay.png",
///         Source = new FileAsset("./test-fixtures/overlay.png"),
///         Bucket = @default.Name,
///     });
///
///     var defaultJob = new Gcp.Transcoder.Job("default", new()
///     {
///         Location = "us-central1",
///         Config = new Gcp.Transcoder.Inputs.JobConfigArgs
///         {
///             Inputs = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigInputArgs
///                 {
///                     Key = "input0",
///                     Uri = Output.Tuple(@default.Name, exampleMp4.Name).Apply(values =>
///                     {
///                         var defaultName = values.Item1;
///                         var exampleMp4Name = values.Item2;
///                         return $"gs://{defaultName}/{exampleMp4Name}";
///                     }),
///                 },
///             },
///             EditLists = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigEditListArgs
///                 {
///                     Key = "atom0",
///                     Inputs = new[]
///                     {
///                         "input0",
///                     },
///                     StartTimeOffset = "0s",
///                 },
///             },
///             AdBreaks = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigAdBreakArgs
///                 {
///                     StartTimeOffset = "3.500s",
///                 },
///             },
///             Overlays = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigOverlayArgs
///                 {
///                     Animations = new[]
///                     {
///                         new Gcp.Transcoder.Inputs.JobConfigOverlayAnimationArgs
///                         {
///                             AnimationFade = new Gcp.Transcoder.Inputs.JobConfigOverlayAnimationAnimationFadeArgs
///                             {
///                                 FadeType = "FADE_IN",
///                                 StartTimeOffset = "1.500s",
///                                 EndTimeOffset = "3.500s",
///                                 Xy = new Gcp.Transcoder.Inputs.JobConfigOverlayAnimationAnimationFadeXyArgs
///                                 {
///                                     X = 1,
///                                     Y = 0.5,
///                                 },
///                             },
///                         },
///                     },
///                     Image = new Gcp.Transcoder.Inputs.JobConfigOverlayImageArgs
///                     {
///                         Uri = Output.Tuple(@default.Name, overlayPng.Name).Apply(values =>
///                         {
///                             var defaultName = values.Item1;
///                             var overlayPngName = values.Item2;
///                             return $"gs://{defaultName}/{overlayPngName}";
///                         }),
///                     },
///                 },
///             },
///             ElementaryStreams = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigElementaryStreamArgs
///                 {
///                     Key = "video-stream0",
///                     VideoStream = new Gcp.Transcoder.Inputs.JobConfigElementaryStreamVideoStreamArgs
///                     {
///                         H264 = new Gcp.Transcoder.Inputs.JobConfigElementaryStreamVideoStreamH264Args
///                         {
///                             WidthPixels = 640,
///                             HeightPixels = 360,
///                             BitrateBps = 550000,
///                             FrameRate = 60,
///                             PixelFormat = "yuv420p",
///                             RateControlMode = "vbr",
///                             CrfLevel = 21,
///                             GopDuration = "3s",
///                             VbvSizeBits = 550000,
///                             VbvFullnessBits = 495000,
///                             EntropyCoder = "cabac",
///                             Profile = "high",
///                             Preset = "veryfast",
///                         },
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigElementaryStreamArgs
///                 {
///                     Key = "video-stream1",
///                     VideoStream = new Gcp.Transcoder.Inputs.JobConfigElementaryStreamVideoStreamArgs
///                     {
///                         H264 = new Gcp.Transcoder.Inputs.JobConfigElementaryStreamVideoStreamH264Args
///                         {
///                             WidthPixels = 1280,
///                             HeightPixels = 720,
///                             BitrateBps = 550000,
///                             FrameRate = 60,
///                             PixelFormat = "yuv420p",
///                             RateControlMode = "vbr",
///                             CrfLevel = 21,
///                             GopDuration = "3s",
///                             VbvSizeBits = 2500000,
///                             VbvFullnessBits = 2250000,
///                             EntropyCoder = "cabac",
///                             Profile = "high",
///                             Preset = "veryfast",
///                         },
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigElementaryStreamArgs
///                 {
///                     Key = "audio-stream0",
///                     AudioStream = new Gcp.Transcoder.Inputs.JobConfigElementaryStreamAudioStreamArgs
///                     {
///                         Codec = "aac",
///                         BitrateBps = 64000,
///                         ChannelCount = 2,
///                         ChannelLayouts = new[]
///                         {
///                             "fl",
///                             "fr",
///                         },
///                         SampleRateHertz = 48000,
///                     },
///                 },
///             },
///             MuxStreams = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigMuxStreamArgs
///                 {
///                     Key = "sd",
///                     FileName = "sd.mp4",
///                     Container = "mp4",
///                     ElementaryStreams = new[]
///                     {
///                         "video-stream0",
///                         "audio-stream0",
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigMuxStreamArgs
///                 {
///                     Key = "hd",
///                     FileName = "hd.mp4",
///                     Container = "mp4",
///                     ElementaryStreams = new[]
///                     {
///                         "video-stream1",
///                         "audio-stream0",
///                     },
///                 },
///             },
///             Output = new Gcp.Transcoder.Inputs.JobConfigOutputArgs
///             {
///                 Uri = @default.Name.Apply(name => $"gs://{name}/outputs/"),
///             },
///         },
///         Labels =
///         {
///             { "label", "key" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/transcoder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := storage.NewBucket(ctx, "default", &storage.BucketArgs{
/// 			Name:                     pulumi.String("transcoder-job"),
/// 			Location:                 pulumi.String("US"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			PublicAccessPrevention:   pulumi.String("enforced"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMp4, err := storage.NewBucketObject(ctx, "example_mp4", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("example.mp4"),
/// 			Source: pulumi.NewFileAsset("./test-fixtures/example.mp4"),
/// 			Bucket: _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		overlayPng, err := storage.NewBucketObject(ctx, "overlay_png", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("overlay.png"),
/// 			Source: pulumi.NewFileAsset("./test-fixtures/overlay.png"),
/// 			Bucket: _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = transcoder.NewJob(ctx, "default", &transcoder.JobArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Config: &transcoder.JobConfigArgs{
/// 				Inputs: transcoder.JobConfigInputTypeArray{
/// 					&transcoder.JobConfigInputTypeArgs{
/// 						Key: pulumi.String("input0"),
/// 						Uri: pulumi.All(_default.Name, exampleMp4.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 							defaultName := _args[0].(string)
/// 							exampleMp4Name := _args[1].(string)
/// 							return fmt.Sprintf("gs://%v/%v", defaultName, exampleMp4Name), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 				EditLists: transcoder.JobConfigEditListArray{
/// 					&transcoder.JobConfigEditListArgs{
/// 						Key: pulumi.String("atom0"),
/// 						Inputs: pulumi.StringArray{
/// 							pulumi.String("input0"),
/// 						},
/// 						StartTimeOffset: pulumi.String("0s"),
/// 					},
/// 				},
/// 				AdBreaks: transcoder.JobConfigAdBreakArray{
/// 					&transcoder.JobConfigAdBreakArgs{
/// 						StartTimeOffset: pulumi.String("3.500s"),
/// 					},
/// 				},
/// 				Overlays: transcoder.JobConfigOverlayArray{
/// 					&transcoder.JobConfigOverlayArgs{
/// 						Animations: transcoder.JobConfigOverlayAnimationArray{
/// 							&transcoder.JobConfigOverlayAnimationArgs{
/// 								AnimationFade: &transcoder.JobConfigOverlayAnimationAnimationFadeArgs{
/// 									FadeType:        pulumi.String("FADE_IN"),
/// 									StartTimeOffset: pulumi.String("1.500s"),
/// 									EndTimeOffset:   pulumi.String("3.500s"),
/// 									Xy: &transcoder.JobConfigOverlayAnimationAnimationFadeXyArgs{
/// 										X: pulumi.Float64(1),
/// 										Y: pulumi.Float64(0.5),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						Image: &transcoder.JobConfigOverlayImageArgs{
/// 							Uri: pulumi.All(_default.Name, overlayPng.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 								defaultName := _args[0].(string)
/// 								overlayPngName := _args[1].(string)
/// 								return fmt.Sprintf("gs://%v/%v", defaultName, overlayPngName), nil
/// 							}).(pulumi.StringOutput),
/// 						},
/// 					},
/// 				},
/// 				ElementaryStreams: transcoder.JobConfigElementaryStreamArray{
/// 					&transcoder.JobConfigElementaryStreamArgs{
/// 						Key: pulumi.String("video-stream0"),
/// 						VideoStream: &transcoder.JobConfigElementaryStreamVideoStreamArgs{
/// 							H264: &transcoder.JobConfigElementaryStreamVideoStreamH264Args{
/// 								WidthPixels:     pulumi.Int(640),
/// 								HeightPixels:    pulumi.Int(360),
/// 								BitrateBps:      pulumi.Int(550000),
/// 								FrameRate:       pulumi.Int(60),
/// 								PixelFormat:     pulumi.String("yuv420p"),
/// 								RateControlMode: pulumi.String("vbr"),
/// 								CrfLevel:        pulumi.Int(21),
/// 								GopDuration:     pulumi.String("3s"),
/// 								VbvSizeBits:     pulumi.Int(550000),
/// 								VbvFullnessBits: pulumi.Int(495000),
/// 								EntropyCoder:    pulumi.String("cabac"),
/// 								Profile:         pulumi.String("high"),
/// 								Preset:          pulumi.String("veryfast"),
/// 							},
/// 						},
/// 					},
/// 					&transcoder.JobConfigElementaryStreamArgs{
/// 						Key: pulumi.String("video-stream1"),
/// 						VideoStream: &transcoder.JobConfigElementaryStreamVideoStreamArgs{
/// 							H264: &transcoder.JobConfigElementaryStreamVideoStreamH264Args{
/// 								WidthPixels:     pulumi.Int(1280),
/// 								HeightPixels:    pulumi.Int(720),
/// 								BitrateBps:      pulumi.Int(550000),
/// 								FrameRate:       pulumi.Int(60),
/// 								PixelFormat:     pulumi.String("yuv420p"),
/// 								RateControlMode: pulumi.String("vbr"),
/// 								CrfLevel:        pulumi.Int(21),
/// 								GopDuration:     pulumi.String("3s"),
/// 								VbvSizeBits:     pulumi.Int(2500000),
/// 								VbvFullnessBits: pulumi.Int(2250000),
/// 								EntropyCoder:    pulumi.String("cabac"),
/// 								Profile:         pulumi.String("high"),
/// 								Preset:          pulumi.String("veryfast"),
/// 							},
/// 						},
/// 					},
/// 					&transcoder.JobConfigElementaryStreamArgs{
/// 						Key: pulumi.String("audio-stream0"),
/// 						AudioStream: &transcoder.JobConfigElementaryStreamAudioStreamArgs{
/// 							Codec:        pulumi.String("aac"),
/// 							BitrateBps:   pulumi.Int(64000),
/// 							ChannelCount: pulumi.Int(2),
/// 							ChannelLayouts: pulumi.StringArray{
/// 								pulumi.String("fl"),
/// 								pulumi.String("fr"),
/// 							},
/// 							SampleRateHertz: pulumi.Int(48000),
/// 						},
/// 					},
/// 				},
/// 				MuxStreams: transcoder.JobConfigMuxStreamArray{
/// 					&transcoder.JobConfigMuxStreamArgs{
/// 						Key:       pulumi.String("sd"),
/// 						FileName:  pulumi.String("sd.mp4"),
/// 						Container: pulumi.String("mp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("video-stream0"),
/// 							pulumi.String("audio-stream0"),
/// 						},
/// 					},
/// 					&transcoder.JobConfigMuxStreamArgs{
/// 						Key:       pulumi.String("hd"),
/// 						FileName:  pulumi.String("hd.mp4"),
/// 						Container: pulumi.String("mp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("video-stream1"),
/// 							pulumi.String("audio-stream0"),
/// 						},
/// 					},
/// 				},
/// 				Output: &transcoder.JobConfigOutputTypeArgs{
/// 					Uri: _default.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("gs://%v/outputs/", name), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.transcoder.Job;
/// import com.pulumi.gcp.transcoder.JobArgs;
/// import com.pulumi.gcp.transcoder.inputs.JobConfigArgs;
/// import com.pulumi.gcp.transcoder.inputs.JobConfigOutputArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var default_ = new Bucket("default", BucketArgs.builder()
///             .name("transcoder-job")
///             .location("US")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .publicAccessPrevention("enforced")
///             .build());
///
///         var exampleMp4 = new BucketObject("exampleMp4", BucketObjectArgs.builder()
///             .name("example.mp4")
///             .source(new FileAsset("./test-fixtures/example.mp4"))
///             .bucket(default_.name())
///             .build());
///
///         var overlayPng = new BucketObject("overlayPng", BucketObjectArgs.builder()
///             .name("overlay.png")
///             .source(new FileAsset("./test-fixtures/overlay.png"))
///             .bucket(default_.name())
///             .build());
///
///         var defaultJob = new Job("defaultJob", JobArgs.builder()
///             .location("us-central1")
///             .config(JobConfigArgs.builder()
///                 .inputs(JobConfigInputArgs.builder()
///                     .key("input0")
///                     .uri(Output.tuple(default_.name(), exampleMp4.name()).applyValue(values -> {
///                         var defaultName = values.t1;
///                         var exampleMp4Name = values.t2;
///                         return String.format("gs://%s/%s", defaultName,exampleMp4Name);
///                     }))
///                     .build())
///                 .editLists(JobConfigEditListArgs.builder()
///                     .key("atom0")
///                     .inputs("input0")
///                     .startTimeOffset("0s")
///                     .build())
///                 .adBreaks(JobConfigAdBreakArgs.builder()
///                     .startTimeOffset("3.500s")
///                     .build())
///                 .overlays(JobConfigOverlayArgs.builder()
///                     .animations(JobConfigOverlayAnimationArgs.builder()
///                         .animationFade(JobConfigOverlayAnimationAnimationFadeArgs.builder()
///                             .fadeType("FADE_IN")
///                             .startTimeOffset("1.500s")
///                             .endTimeOffset("3.500s")
///                             .xy(JobConfigOverlayAnimationAnimationFadeXyArgs.builder()
///                                 .x(1.0)
///                                 .y(0.5)
///                                 .build())
///                             .build())
///                         .build())
///                     .image(JobConfigOverlayImageArgs.builder()
///                         .uri(Output.tuple(default_.name(), overlayPng.name()).applyValue(values -> {
///                             var defaultName = values.t1;
///                             var overlayPngName = values.t2;
///                             return String.format("gs://%s/%s", defaultName,overlayPngName);
///                         }))
///                         .build())
///                     .build())
///                 .elementaryStreams(
///                     JobConfigElementaryStreamArgs.builder()
///                         .key("video-stream0")
///                         .videoStream(JobConfigElementaryStreamVideoStreamArgs.builder()
///                             .h264(JobConfigElementaryStreamVideoStreamH264Args.builder()
///                                 .widthPixels(640)
///                                 .heightPixels(360)
///                                 .bitrateBps(550000)
///                                 .frameRate(60)
///                                 .pixelFormat("yuv420p")
///                                 .rateControlMode("vbr")
///                                 .crfLevel(21)
///                                 .gopDuration("3s")
///                                 .vbvSizeBits(550000)
///                                 .vbvFullnessBits(495000)
///                                 .entropyCoder("cabac")
///                                 .profile("high")
///                                 .preset("veryfast")
///                                 .build())
///                             .build())
///                         .build(),
///                     JobConfigElementaryStreamArgs.builder()
///                         .key("video-stream1")
///                         .videoStream(JobConfigElementaryStreamVideoStreamArgs.builder()
///                             .h264(JobConfigElementaryStreamVideoStreamH264Args.builder()
///                                 .widthPixels(1280)
///                                 .heightPixels(720)
///                                 .bitrateBps(550000)
///                                 .frameRate(60)
///                                 .pixelFormat("yuv420p")
///                                 .rateControlMode("vbr")
///                                 .crfLevel(21)
///                                 .gopDuration("3s")
///                                 .vbvSizeBits(2500000)
///                                 .vbvFullnessBits(2250000)
///                                 .entropyCoder("cabac")
///                                 .profile("high")
///                                 .preset("veryfast")
///                                 .build())
///                             .build())
///                         .build(),
///                     JobConfigElementaryStreamArgs.builder()
///                         .key("audio-stream0")
///                         .audioStream(JobConfigElementaryStreamAudioStreamArgs.builder()
///                             .codec("aac")
///                             .bitrateBps(64000)
///                             .channelCount(2)
///                             .channelLayouts(
///                                 "fl",
///                                 "fr")
///                             .sampleRateHertz(48000)
///                             .build())
///                         .build())
///                 .muxStreams(
///                     JobConfigMuxStreamArgs.builder()
///                         .key("sd")
///                         .fileName("sd.mp4")
///                         .container("mp4")
///                         .elementaryStreams(
///                             "video-stream0",
///                             "audio-stream0")
///                         .build(),
///                     JobConfigMuxStreamArgs.builder()
///                         .key("hd")
///                         .fileName("hd.mp4")
///                         .container("mp4")
///                         .elementaryStreams(
///                             "video-stream1",
///                             "audio-stream0")
///                         .build())
///                 .output(JobConfigOutputArgs.builder()
///                     .uri(default_.name().applyValue(_name -> String.format("gs://%s/outputs/", _name)))
///                     .build())
///                 .build())
///             .labels(Map.of("label", "key"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:storage:Bucket
///     properties:
///       name: transcoder-job
///       location: US
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///       publicAccessPrevention: enforced
///   exampleMp4:
///     type: gcp:storage:BucketObject
///     name: example_mp4
///     properties:
///       name: example.mp4
///       source:
///         fn::FileAsset: ./test-fixtures/example.mp4
///       bucket: ${default.name}
///   overlayPng:
///     type: gcp:storage:BucketObject
///     name: overlay_png
///     properties:
///       name: overlay.png
///       source:
///         fn::FileAsset: ./test-fixtures/overlay.png
///       bucket: ${default.name}
///   defaultJob:
///     type: gcp:transcoder:Job
///     name: default
///     properties:
///       location: us-central1
///       config:
///         inputs:
///           - key: input0
///             uri: gs://${default.name}/${exampleMp4.name}
///         editLists:
///           - key: atom0
///             inputs:
///               - input0
///             startTimeOffset: 0s
///         adBreaks:
///           - startTimeOffset: 3.500s
///         overlays:
///           - animations:
///               - animationFade:
///                   fadeType: FADE_IN
///                   startTimeOffset: 1.500s
///                   endTimeOffset: 3.500s
///                   xy:
///                     x: 1
///                     y: 0.5
///             image:
///               uri: gs://${default.name}/${overlayPng.name}
///         elementaryStreams:
///           - key: video-stream0
///             videoStream:
///               h264:
///                 widthPixels: 640
///                 heightPixels: 360
///                 bitrateBps: 550000
///                 frameRate: 60
///                 pixelFormat: yuv420p
///                 rateControlMode: vbr
///                 crfLevel: 21
///                 gopDuration: 3s
///                 vbvSizeBits: 550000
///                 vbvFullnessBits: 495000
///                 entropyCoder: cabac
///                 profile: high
///                 preset: veryfast
///           - key: video-stream1
///             videoStream:
///               h264:
///                 widthPixels: 1280
///                 heightPixels: 720
///                 bitrateBps: 550000
///                 frameRate: 60
///                 pixelFormat: yuv420p
///                 rateControlMode: vbr
///                 crfLevel: 21
///                 gopDuration: 3s
///                 vbvSizeBits: 2.5e+06
///                 vbvFullnessBits: 2.25e+06
///                 entropyCoder: cabac
///                 profile: high
///                 preset: veryfast
///           - key: audio-stream0
///             audioStream:
///               codec: aac
///               bitrateBps: 64000
///               channelCount: 2
///               channelLayouts:
///                 - fl
///                 - fr
///               sampleRateHertz: 48000
///         muxStreams:
///           - key: sd
///             fileName: sd.mp4
///             container: mp4
///             elementaryStreams:
///               - video-stream0
///               - audio-stream0
///           - key: hd
///             fileName: hd.mp4
///             container: mp4
///             elementaryStreams:
///               - video-stream1
///               - audio-stream0
///         output:
///           uri: gs://${default.name}/outputs/
///       labels:
///         label: key
/// ```
///
/// ### Transcoder Job Manifests
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.storage.Bucket("default", {
///     name: "transcoder-job",
///     location: "US",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
///     publicAccessPrevention: "enforced",
/// });
/// const exampleMp4 = new gcp.storage.BucketObject("example_mp4", {
///     name: "example.mp4",
///     source: new pulumi.asset.FileAsset("./test-fixtures/example.mp4"),
///     bucket: _default.name,
/// });
/// const defaultJob = new gcp.transcoder.Job("default", {
///     location: "us-central1",
///     config: {
///         inputs: [{
///             key: "input0",
///             uri: pulumi.interpolate`gs://${_default.name}/${exampleMp4.name}`,
///         }],
///         editLists: [{
///             key: "atom0",
///             startTimeOffset: "0s",
///             inputs: ["input0"],
///         }],
///         adBreaks: [{
///             startTimeOffset: "3.500s",
///         }],
///         elementaryStreams: [
///             {
///                 key: "video-stream0",
///                 videoStream: {
///                     h264: {
///                         widthPixels: 640,
///                         heightPixels: 360,
///                         bitrateBps: 550000,
///                         frameRate: 60,
///                         pixelFormat: "yuv420p",
///                         rateControlMode: "vbr",
///                         crfLevel: 21,
///                         gopDuration: "3s",
///                         vbvSizeBits: 550000,
///                         vbvFullnessBits: 495000,
///                         entropyCoder: "cabac",
///                         profile: "high",
///                         preset: "veryfast",
///                     },
///                 },
///             },
///             {
///                 key: "video-stream1",
///                 videoStream: {
///                     h264: {
///                         widthPixels: 1280,
///                         heightPixels: 720,
///                         bitrateBps: 550000,
///                         frameRate: 60,
///                         pixelFormat: "yuv420p",
///                         rateControlMode: "vbr",
///                         crfLevel: 21,
///                         gopDuration: "3s",
///                         vbvSizeBits: 2500000,
///                         vbvFullnessBits: 2250000,
///                         entropyCoder: "cabac",
///                         profile: "high",
///                         preset: "veryfast",
///                     },
///                 },
///             },
///             {
///                 key: "audio-stream0",
///                 audioStream: {
///                     codec: "aac",
///                     bitrateBps: 64000,
///                     channelCount: 2,
///                     channelLayouts: [
///                         "fl",
///                         "fr",
///                     ],
///                     sampleRateHertz: 48000,
///                 },
///             },
///         ],
///         muxStreams: [
///             {
///                 key: "sd",
///                 fileName: "sd.mp4",
///                 container: "mp4",
///                 elementaryStreams: [
///                     "video-stream0",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 key: "hd",
///                 fileName: "hd.mp4",
///                 container: "mp4",
///                 elementaryStreams: [
///                     "video-stream1",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 key: "media-sd",
///                 fileName: "media-sd.ts",
///                 container: "ts",
///                 elementaryStreams: [
///                     "video-stream0",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 key: "media-hd",
///                 fileName: "media-hd.ts",
///                 container: "ts",
///                 elementaryStreams: [
///                     "video-stream1",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 key: "video-only-sd",
///                 fileName: "video-only-sd.m4s",
///                 container: "fmp4",
///                 elementaryStreams: ["video-stream0"],
///             },
///             {
///                 key: "video-only-hd",
///                 fileName: "video-only-hd.m4s",
///                 container: "fmp4",
///                 elementaryStreams: ["video-stream1"],
///             },
///             {
///                 key: "audio-only",
///                 fileName: "audio-only.m4s",
///                 container: "fmp4",
///                 elementaryStreams: ["audio-stream0"],
///             },
///         ],
///         manifests: [
///             {
///                 fileName: "manifest.m3u8",
///                 type: "HLS",
///                 muxStreams: [
///                     "media-sd",
///                     "media-hd",
///                 ],
///             },
///             {
///                 fileName: "manifest.mpd",
///                 type: "DASH",
///                 muxStreams: [
///                     "video-only-sd",
///                     "video-only-hd",
///                     "audio-only",
///                 ],
///             },
///         ],
///         output: {
///             uri: pulumi.interpolate`gs://${_default.name}/outputs/`,
///         },
///     },
///     labels: {
///         label: "key",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.storage.Bucket("default",
///     name="transcoder-job",
///     location="US",
///     force_destroy=True,
///     uniform_bucket_level_access=True,
///     public_access_prevention="enforced")
/// example_mp4 = gcp.storage.BucketObject("example_mp4",
///     name="example.mp4",
///     source=pulumi.FileAsset("./test-fixtures/example.mp4"),
///     bucket=default.name)
/// default_job = gcp.transcoder.Job("default",
///     location="us-central1",
///     config={
///         "inputs": [{
///             "key": "input0",
///             "uri": pulumi.Output.all(
///                 defaultName=default.name,
///                 exampleMp4Name=example_mp4.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['defaultName']}/{resolved_outputs['exampleMp4Name']}")
/// ,
///         }],
///         "edit_lists": [{
///             "key": "atom0",
///             "start_time_offset": "0s",
///             "inputs": ["input0"],
///         }],
///         "ad_breaks": [{
///             "start_time_offset": "3.500s",
///         }],
///         "elementary_streams": [
///             {
///                 "key": "video-stream0",
///                 "video_stream": {
///                     "h264": {
///                         "width_pixels": 640,
///                         "height_pixels": 360,
///                         "bitrate_bps": 550000,
///                         "frame_rate": 60,
///                         "pixel_format": "yuv420p",
///                         "rate_control_mode": "vbr",
///                         "crf_level": 21,
///                         "gop_duration": "3s",
///                         "vbv_size_bits": 550000,
///                         "vbv_fullness_bits": 495000,
///                         "entropy_coder": "cabac",
///                         "profile": "high",
///                         "preset": "veryfast",
///                     },
///                 },
///             },
///             {
///                 "key": "video-stream1",
///                 "video_stream": {
///                     "h264": {
///                         "width_pixels": 1280,
///                         "height_pixels": 720,
///                         "bitrate_bps": 550000,
///                         "frame_rate": 60,
///                         "pixel_format": "yuv420p",
///                         "rate_control_mode": "vbr",
///                         "crf_level": 21,
///                         "gop_duration": "3s",
///                         "vbv_size_bits": 2500000,
///                         "vbv_fullness_bits": 2250000,
///                         "entropy_coder": "cabac",
///                         "profile": "high",
///                         "preset": "veryfast",
///                     },
///                 },
///             },
///             {
///                 "key": "audio-stream0",
///                 "audio_stream": {
///                     "codec": "aac",
///                     "bitrate_bps": 64000,
///                     "channel_count": 2,
///                     "channel_layouts": [
///                         "fl",
///                         "fr",
///                     ],
///                     "sample_rate_hertz": 48000,
///                 },
///             },
///         ],
///         "mux_streams": [
///             {
///                 "key": "sd",
///                 "file_name": "sd.mp4",
///                 "container": "mp4",
///                 "elementary_streams": [
///                     "video-stream0",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 "key": "hd",
///                 "file_name": "hd.mp4",
///                 "container": "mp4",
///                 "elementary_streams": [
///                     "video-stream1",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 "key": "media-sd",
///                 "file_name": "media-sd.ts",
///                 "container": "ts",
///                 "elementary_streams": [
///                     "video-stream0",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 "key": "media-hd",
///                 "file_name": "media-hd.ts",
///                 "container": "ts",
///                 "elementary_streams": [
///                     "video-stream1",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 "key": "video-only-sd",
///                 "file_name": "video-only-sd.m4s",
///                 "container": "fmp4",
///                 "elementary_streams": ["video-stream0"],
///             },
///             {
///                 "key": "video-only-hd",
///                 "file_name": "video-only-hd.m4s",
///                 "container": "fmp4",
///                 "elementary_streams": ["video-stream1"],
///             },
///             {
///                 "key": "audio-only",
///                 "file_name": "audio-only.m4s",
///                 "container": "fmp4",
///                 "elementary_streams": ["audio-stream0"],
///             },
///         ],
///         "manifests": [
///             {
///                 "file_name": "manifest.m3u8",
///                 "type": "HLS",
///                 "mux_streams": [
///                     "media-sd",
///                     "media-hd",
///                 ],
///             },
///             {
///                 "file_name": "manifest.mpd",
///                 "type": "DASH",
///                 "mux_streams": [
///                     "video-only-sd",
///                     "video-only-hd",
///                     "audio-only",
///                 ],
///             },
///         ],
///         "output": {
///             "uri": default.name.apply(lambda name: f"gs://{name}/outputs/"),
///         },
///     },
///     labels={
///         "label": "key",
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
///     var @default = new Gcp.Storage.Bucket("default", new()
///     {
///         Name = "transcoder-job",
///         Location = "US",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///         PublicAccessPrevention = "enforced",
///     });
///
///     var exampleMp4 = new Gcp.Storage.BucketObject("example_mp4", new()
///     {
///         Name = "example.mp4",
///         Source = new FileAsset("./test-fixtures/example.mp4"),
///         Bucket = @default.Name,
///     });
///
///     var defaultJob = new Gcp.Transcoder.Job("default", new()
///     {
///         Location = "us-central1",
///         Config = new Gcp.Transcoder.Inputs.JobConfigArgs
///         {
///             Inputs = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigInputArgs
///                 {
///                     Key = "input0",
///                     Uri = Output.Tuple(@default.Name, exampleMp4.Name).Apply(values =>
///                     {
///                         var defaultName = values.Item1;
///                         var exampleMp4Name = values.Item2;
///                         return $"gs://{defaultName}/{exampleMp4Name}";
///                     }),
///                 },
///             },
///             EditLists = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigEditListArgs
///                 {
///                     Key = "atom0",
///                     StartTimeOffset = "0s",
///                     Inputs = new[]
///                     {
///                         "input0",
///                     },
///                 },
///             },
///             AdBreaks = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigAdBreakArgs
///                 {
///                     StartTimeOffset = "3.500s",
///                 },
///             },
///             ElementaryStreams = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigElementaryStreamArgs
///                 {
///                     Key = "video-stream0",
///                     VideoStream = new Gcp.Transcoder.Inputs.JobConfigElementaryStreamVideoStreamArgs
///                     {
///                         H264 = new Gcp.Transcoder.Inputs.JobConfigElementaryStreamVideoStreamH264Args
///                         {
///                             WidthPixels = 640,
///                             HeightPixels = 360,
///                             BitrateBps = 550000,
///                             FrameRate = 60,
///                             PixelFormat = "yuv420p",
///                             RateControlMode = "vbr",
///                             CrfLevel = 21,
///                             GopDuration = "3s",
///                             VbvSizeBits = 550000,
///                             VbvFullnessBits = 495000,
///                             EntropyCoder = "cabac",
///                             Profile = "high",
///                             Preset = "veryfast",
///                         },
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigElementaryStreamArgs
///                 {
///                     Key = "video-stream1",
///                     VideoStream = new Gcp.Transcoder.Inputs.JobConfigElementaryStreamVideoStreamArgs
///                     {
///                         H264 = new Gcp.Transcoder.Inputs.JobConfigElementaryStreamVideoStreamH264Args
///                         {
///                             WidthPixels = 1280,
///                             HeightPixels = 720,
///                             BitrateBps = 550000,
///                             FrameRate = 60,
///                             PixelFormat = "yuv420p",
///                             RateControlMode = "vbr",
///                             CrfLevel = 21,
///                             GopDuration = "3s",
///                             VbvSizeBits = 2500000,
///                             VbvFullnessBits = 2250000,
///                             EntropyCoder = "cabac",
///                             Profile = "high",
///                             Preset = "veryfast",
///                         },
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigElementaryStreamArgs
///                 {
///                     Key = "audio-stream0",
///                     AudioStream = new Gcp.Transcoder.Inputs.JobConfigElementaryStreamAudioStreamArgs
///                     {
///                         Codec = "aac",
///                         BitrateBps = 64000,
///                         ChannelCount = 2,
///                         ChannelLayouts = new[]
///                         {
///                             "fl",
///                             "fr",
///                         },
///                         SampleRateHertz = 48000,
///                     },
///                 },
///             },
///             MuxStreams = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigMuxStreamArgs
///                 {
///                     Key = "sd",
///                     FileName = "sd.mp4",
///                     Container = "mp4",
///                     ElementaryStreams = new[]
///                     {
///                         "video-stream0",
///                         "audio-stream0",
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigMuxStreamArgs
///                 {
///                     Key = "hd",
///                     FileName = "hd.mp4",
///                     Container = "mp4",
///                     ElementaryStreams = new[]
///                     {
///                         "video-stream1",
///                         "audio-stream0",
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigMuxStreamArgs
///                 {
///                     Key = "media-sd",
///                     FileName = "media-sd.ts",
///                     Container = "ts",
///                     ElementaryStreams = new[]
///                     {
///                         "video-stream0",
///                         "audio-stream0",
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigMuxStreamArgs
///                 {
///                     Key = "media-hd",
///                     FileName = "media-hd.ts",
///                     Container = "ts",
///                     ElementaryStreams = new[]
///                     {
///                         "video-stream1",
///                         "audio-stream0",
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigMuxStreamArgs
///                 {
///                     Key = "video-only-sd",
///                     FileName = "video-only-sd.m4s",
///                     Container = "fmp4",
///                     ElementaryStreams = new[]
///                     {
///                         "video-stream0",
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigMuxStreamArgs
///                 {
///                     Key = "video-only-hd",
///                     FileName = "video-only-hd.m4s",
///                     Container = "fmp4",
///                     ElementaryStreams = new[]
///                     {
///                         "video-stream1",
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigMuxStreamArgs
///                 {
///                     Key = "audio-only",
///                     FileName = "audio-only.m4s",
///                     Container = "fmp4",
///                     ElementaryStreams = new[]
///                     {
///                         "audio-stream0",
///                     },
///                 },
///             },
///             Manifests = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobConfigManifestArgs
///                 {
///                     FileName = "manifest.m3u8",
///                     Type = "HLS",
///                     MuxStreams = new[]
///                     {
///                         "media-sd",
///                         "media-hd",
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobConfigManifestArgs
///                 {
///                     FileName = "manifest.mpd",
///                     Type = "DASH",
///                     MuxStreams = new[]
///                     {
///                         "video-only-sd",
///                         "video-only-hd",
///                         "audio-only",
///                     },
///                 },
///             },
///             Output = new Gcp.Transcoder.Inputs.JobConfigOutputArgs
///             {
///                 Uri = @default.Name.Apply(name => $"gs://{name}/outputs/"),
///             },
///         },
///         Labels =
///         {
///             { "label", "key" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/transcoder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := storage.NewBucket(ctx, "default", &storage.BucketArgs{
/// 			Name:                     pulumi.String("transcoder-job"),
/// 			Location:                 pulumi.String("US"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			PublicAccessPrevention:   pulumi.String("enforced"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMp4, err := storage.NewBucketObject(ctx, "example_mp4", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("example.mp4"),
/// 			Source: pulumi.NewFileAsset("./test-fixtures/example.mp4"),
/// 			Bucket: _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = transcoder.NewJob(ctx, "default", &transcoder.JobArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Config: &transcoder.JobConfigArgs{
/// 				Inputs: transcoder.JobConfigInputTypeArray{
/// 					&transcoder.JobConfigInputTypeArgs{
/// 						Key: pulumi.String("input0"),
/// 						Uri: pulumi.All(_default.Name, exampleMp4.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 							defaultName := _args[0].(string)
/// 							exampleMp4Name := _args[1].(string)
/// 							return fmt.Sprintf("gs://%v/%v", defaultName, exampleMp4Name), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 				EditLists: transcoder.JobConfigEditListArray{
/// 					&transcoder.JobConfigEditListArgs{
/// 						Key:             pulumi.String("atom0"),
/// 						StartTimeOffset: pulumi.String("0s"),
/// 						Inputs: pulumi.StringArray{
/// 							pulumi.String("input0"),
/// 						},
/// 					},
/// 				},
/// 				AdBreaks: transcoder.JobConfigAdBreakArray{
/// 					&transcoder.JobConfigAdBreakArgs{
/// 						StartTimeOffset: pulumi.String("3.500s"),
/// 					},
/// 				},
/// 				ElementaryStreams: transcoder.JobConfigElementaryStreamArray{
/// 					&transcoder.JobConfigElementaryStreamArgs{
/// 						Key: pulumi.String("video-stream0"),
/// 						VideoStream: &transcoder.JobConfigElementaryStreamVideoStreamArgs{
/// 							H264: &transcoder.JobConfigElementaryStreamVideoStreamH264Args{
/// 								WidthPixels:     pulumi.Int(640),
/// 								HeightPixels:    pulumi.Int(360),
/// 								BitrateBps:      pulumi.Int(550000),
/// 								FrameRate:       pulumi.Int(60),
/// 								PixelFormat:     pulumi.String("yuv420p"),
/// 								RateControlMode: pulumi.String("vbr"),
/// 								CrfLevel:        pulumi.Int(21),
/// 								GopDuration:     pulumi.String("3s"),
/// 								VbvSizeBits:     pulumi.Int(550000),
/// 								VbvFullnessBits: pulumi.Int(495000),
/// 								EntropyCoder:    pulumi.String("cabac"),
/// 								Profile:         pulumi.String("high"),
/// 								Preset:          pulumi.String("veryfast"),
/// 							},
/// 						},
/// 					},
/// 					&transcoder.JobConfigElementaryStreamArgs{
/// 						Key: pulumi.String("video-stream1"),
/// 						VideoStream: &transcoder.JobConfigElementaryStreamVideoStreamArgs{
/// 							H264: &transcoder.JobConfigElementaryStreamVideoStreamH264Args{
/// 								WidthPixels:     pulumi.Int(1280),
/// 								HeightPixels:    pulumi.Int(720),
/// 								BitrateBps:      pulumi.Int(550000),
/// 								FrameRate:       pulumi.Int(60),
/// 								PixelFormat:     pulumi.String("yuv420p"),
/// 								RateControlMode: pulumi.String("vbr"),
/// 								CrfLevel:        pulumi.Int(21),
/// 								GopDuration:     pulumi.String("3s"),
/// 								VbvSizeBits:     pulumi.Int(2500000),
/// 								VbvFullnessBits: pulumi.Int(2250000),
/// 								EntropyCoder:    pulumi.String("cabac"),
/// 								Profile:         pulumi.String("high"),
/// 								Preset:          pulumi.String("veryfast"),
/// 							},
/// 						},
/// 					},
/// 					&transcoder.JobConfigElementaryStreamArgs{
/// 						Key: pulumi.String("audio-stream0"),
/// 						AudioStream: &transcoder.JobConfigElementaryStreamAudioStreamArgs{
/// 							Codec:        pulumi.String("aac"),
/// 							BitrateBps:   pulumi.Int(64000),
/// 							ChannelCount: pulumi.Int(2),
/// 							ChannelLayouts: pulumi.StringArray{
/// 								pulumi.String("fl"),
/// 								pulumi.String("fr"),
/// 							},
/// 							SampleRateHertz: pulumi.Int(48000),
/// 						},
/// 					},
/// 				},
/// 				MuxStreams: transcoder.JobConfigMuxStreamArray{
/// 					&transcoder.JobConfigMuxStreamArgs{
/// 						Key:       pulumi.String("sd"),
/// 						FileName:  pulumi.String("sd.mp4"),
/// 						Container: pulumi.String("mp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("video-stream0"),
/// 							pulumi.String("audio-stream0"),
/// 						},
/// 					},
/// 					&transcoder.JobConfigMuxStreamArgs{
/// 						Key:       pulumi.String("hd"),
/// 						FileName:  pulumi.String("hd.mp4"),
/// 						Container: pulumi.String("mp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("video-stream1"),
/// 							pulumi.String("audio-stream0"),
/// 						},
/// 					},
/// 					&transcoder.JobConfigMuxStreamArgs{
/// 						Key:       pulumi.String("media-sd"),
/// 						FileName:  pulumi.String("media-sd.ts"),
/// 						Container: pulumi.String("ts"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("video-stream0"),
/// 							pulumi.String("audio-stream0"),
/// 						},
/// 					},
/// 					&transcoder.JobConfigMuxStreamArgs{
/// 						Key:       pulumi.String("media-hd"),
/// 						FileName:  pulumi.String("media-hd.ts"),
/// 						Container: pulumi.String("ts"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("video-stream1"),
/// 							pulumi.String("audio-stream0"),
/// 						},
/// 					},
/// 					&transcoder.JobConfigMuxStreamArgs{
/// 						Key:       pulumi.String("video-only-sd"),
/// 						FileName:  pulumi.String("video-only-sd.m4s"),
/// 						Container: pulumi.String("fmp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("video-stream0"),
/// 						},
/// 					},
/// 					&transcoder.JobConfigMuxStreamArgs{
/// 						Key:       pulumi.String("video-only-hd"),
/// 						FileName:  pulumi.String("video-only-hd.m4s"),
/// 						Container: pulumi.String("fmp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("video-stream1"),
/// 						},
/// 					},
/// 					&transcoder.JobConfigMuxStreamArgs{
/// 						Key:       pulumi.String("audio-only"),
/// 						FileName:  pulumi.String("audio-only.m4s"),
/// 						Container: pulumi.String("fmp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("audio-stream0"),
/// 						},
/// 					},
/// 				},
/// 				Manifests: transcoder.JobConfigManifestArray{
/// 					&transcoder.JobConfigManifestArgs{
/// 						FileName: pulumi.String("manifest.m3u8"),
/// 						Type:     pulumi.String("HLS"),
/// 						MuxStreams: pulumi.StringArray{
/// 							pulumi.String("media-sd"),
/// 							pulumi.String("media-hd"),
/// 						},
/// 					},
/// 					&transcoder.JobConfigManifestArgs{
/// 						FileName: pulumi.String("manifest.mpd"),
/// 						Type:     pulumi.String("DASH"),
/// 						MuxStreams: pulumi.StringArray{
/// 							pulumi.String("video-only-sd"),
/// 							pulumi.String("video-only-hd"),
/// 							pulumi.String("audio-only"),
/// 						},
/// 					},
/// 				},
/// 				Output: &transcoder.JobConfigOutputTypeArgs{
/// 					Uri: _default.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("gs://%v/outputs/", name), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.transcoder.Job;
/// import com.pulumi.gcp.transcoder.JobArgs;
/// import com.pulumi.gcp.transcoder.inputs.JobConfigArgs;
/// import com.pulumi.gcp.transcoder.inputs.JobConfigOutputArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var default_ = new Bucket("default", BucketArgs.builder()
///             .name("transcoder-job")
///             .location("US")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .publicAccessPrevention("enforced")
///             .build());
///
///         var exampleMp4 = new BucketObject("exampleMp4", BucketObjectArgs.builder()
///             .name("example.mp4")
///             .source(new FileAsset("./test-fixtures/example.mp4"))
///             .bucket(default_.name())
///             .build());
///
///         var defaultJob = new Job("defaultJob", JobArgs.builder()
///             .location("us-central1")
///             .config(JobConfigArgs.builder()
///                 .inputs(JobConfigInputArgs.builder()
///                     .key("input0")
///                     .uri(Output.tuple(default_.name(), exampleMp4.name()).applyValue(values -> {
///                         var defaultName = values.t1;
///                         var exampleMp4Name = values.t2;
///                         return String.format("gs://%s/%s", defaultName,exampleMp4Name);
///                     }))
///                     .build())
///                 .editLists(JobConfigEditListArgs.builder()
///                     .key("atom0")
///                     .startTimeOffset("0s")
///                     .inputs("input0")
///                     .build())
///                 .adBreaks(JobConfigAdBreakArgs.builder()
///                     .startTimeOffset("3.500s")
///                     .build())
///                 .elementaryStreams(
///                     JobConfigElementaryStreamArgs.builder()
///                         .key("video-stream0")
///                         .videoStream(JobConfigElementaryStreamVideoStreamArgs.builder()
///                             .h264(JobConfigElementaryStreamVideoStreamH264Args.builder()
///                                 .widthPixels(640)
///                                 .heightPixels(360)
///                                 .bitrateBps(550000)
///                                 .frameRate(60)
///                                 .pixelFormat("yuv420p")
///                                 .rateControlMode("vbr")
///                                 .crfLevel(21)
///                                 .gopDuration("3s")
///                                 .vbvSizeBits(550000)
///                                 .vbvFullnessBits(495000)
///                                 .entropyCoder("cabac")
///                                 .profile("high")
///                                 .preset("veryfast")
///                                 .build())
///                             .build())
///                         .build(),
///                     JobConfigElementaryStreamArgs.builder()
///                         .key("video-stream1")
///                         .videoStream(JobConfigElementaryStreamVideoStreamArgs.builder()
///                             .h264(JobConfigElementaryStreamVideoStreamH264Args.builder()
///                                 .widthPixels(1280)
///                                 .heightPixels(720)
///                                 .bitrateBps(550000)
///                                 .frameRate(60)
///                                 .pixelFormat("yuv420p")
///                                 .rateControlMode("vbr")
///                                 .crfLevel(21)
///                                 .gopDuration("3s")
///                                 .vbvSizeBits(2500000)
///                                 .vbvFullnessBits(2250000)
///                                 .entropyCoder("cabac")
///                                 .profile("high")
///                                 .preset("veryfast")
///                                 .build())
///                             .build())
///                         .build(),
///                     JobConfigElementaryStreamArgs.builder()
///                         .key("audio-stream0")
///                         .audioStream(JobConfigElementaryStreamAudioStreamArgs.builder()
///                             .codec("aac")
///                             .bitrateBps(64000)
///                             .channelCount(2)
///                             .channelLayouts(
///                                 "fl",
///                                 "fr")
///                             .sampleRateHertz(48000)
///                             .build())
///                         .build())
///                 .muxStreams(
///                     JobConfigMuxStreamArgs.builder()
///                         .key("sd")
///                         .fileName("sd.mp4")
///                         .container("mp4")
///                         .elementaryStreams(
///                             "video-stream0",
///                             "audio-stream0")
///                         .build(),
///                     JobConfigMuxStreamArgs.builder()
///                         .key("hd")
///                         .fileName("hd.mp4")
///                         .container("mp4")
///                         .elementaryStreams(
///                             "video-stream1",
///                             "audio-stream0")
///                         .build(),
///                     JobConfigMuxStreamArgs.builder()
///                         .key("media-sd")
///                         .fileName("media-sd.ts")
///                         .container("ts")
///                         .elementaryStreams(
///                             "video-stream0",
///                             "audio-stream0")
///                         .build(),
///                     JobConfigMuxStreamArgs.builder()
///                         .key("media-hd")
///                         .fileName("media-hd.ts")
///                         .container("ts")
///                         .elementaryStreams(
///                             "video-stream1",
///                             "audio-stream0")
///                         .build(),
///                     JobConfigMuxStreamArgs.builder()
///                         .key("video-only-sd")
///                         .fileName("video-only-sd.m4s")
///                         .container("fmp4")
///                         .elementaryStreams("video-stream0")
///                         .build(),
///                     JobConfigMuxStreamArgs.builder()
///                         .key("video-only-hd")
///                         .fileName("video-only-hd.m4s")
///                         .container("fmp4")
///                         .elementaryStreams("video-stream1")
///                         .build(),
///                     JobConfigMuxStreamArgs.builder()
///                         .key("audio-only")
///                         .fileName("audio-only.m4s")
///                         .container("fmp4")
///                         .elementaryStreams("audio-stream0")
///                         .build())
///                 .manifests(
///                     JobConfigManifestArgs.builder()
///                         .fileName("manifest.m3u8")
///                         .type("HLS")
///                         .muxStreams(
///                             "media-sd",
///                             "media-hd")
///                         .build(),
///                     JobConfigManifestArgs.builder()
///                         .fileName("manifest.mpd")
///                         .type("DASH")
///                         .muxStreams(
///                             "video-only-sd",
///                             "video-only-hd",
///                             "audio-only")
///                         .build())
///                 .output(JobConfigOutputArgs.builder()
///                     .uri(default_.name().applyValue(_name -> String.format("gs://%s/outputs/", _name)))
///                     .build())
///                 .build())
///             .labels(Map.of("label", "key"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:storage:Bucket
///     properties:
///       name: transcoder-job
///       location: US
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///       publicAccessPrevention: enforced
///   exampleMp4:
///     type: gcp:storage:BucketObject
///     name: example_mp4
///     properties:
///       name: example.mp4
///       source:
///         fn::FileAsset: ./test-fixtures/example.mp4
///       bucket: ${default.name}
///   defaultJob:
///     type: gcp:transcoder:Job
///     name: default
///     properties:
///       location: us-central1
///       config:
///         inputs:
///           - key: input0
///             uri: gs://${default.name}/${exampleMp4.name}
///         editLists:
///           - key: atom0
///             startTimeOffset: 0s
///             inputs:
///               - input0
///         adBreaks:
///           - startTimeOffset: 3.500s
///         elementaryStreams:
///           - key: video-stream0
///             videoStream:
///               h264:
///                 widthPixels: 640
///                 heightPixels: 360
///                 bitrateBps: 550000
///                 frameRate: 60
///                 pixelFormat: yuv420p
///                 rateControlMode: vbr
///                 crfLevel: 21
///                 gopDuration: 3s
///                 vbvSizeBits: 550000
///                 vbvFullnessBits: 495000
///                 entropyCoder: cabac
///                 profile: high
///                 preset: veryfast
///           - key: video-stream1
///             videoStream:
///               h264:
///                 widthPixels: 1280
///                 heightPixels: 720
///                 bitrateBps: 550000
///                 frameRate: 60
///                 pixelFormat: yuv420p
///                 rateControlMode: vbr
///                 crfLevel: 21
///                 gopDuration: 3s
///                 vbvSizeBits: 2.5e+06
///                 vbvFullnessBits: 2.25e+06
///                 entropyCoder: cabac
///                 profile: high
///                 preset: veryfast
///           - key: audio-stream0
///             audioStream:
///               codec: aac
///               bitrateBps: 64000
///               channelCount: 2
///               channelLayouts:
///                 - fl
///                 - fr
///               sampleRateHertz: 48000
///         muxStreams:
///           - key: sd
///             fileName: sd.mp4
///             container: mp4
///             elementaryStreams:
///               - video-stream0
///               - audio-stream0
///           - key: hd
///             fileName: hd.mp4
///             container: mp4
///             elementaryStreams:
///               - video-stream1
///               - audio-stream0
///           - key: media-sd
///             fileName: media-sd.ts
///             container: ts
///             elementaryStreams:
///               - video-stream0
///               - audio-stream0
///           - key: media-hd
///             fileName: media-hd.ts
///             container: ts
///             elementaryStreams:
///               - video-stream1
///               - audio-stream0
///           - key: video-only-sd
///             fileName: video-only-sd.m4s
///             container: fmp4
///             elementaryStreams:
///               - video-stream0
///           - key: video-only-hd
///             fileName: video-only-hd.m4s
///             container: fmp4
///             elementaryStreams:
///               - video-stream1
///           - key: audio-only
///             fileName: audio-only.m4s
///             container: fmp4
///             elementaryStreams:
///               - audio-stream0
///         manifests:
///           - fileName: manifest.m3u8
///             type: HLS
///             muxStreams:
///               - media-sd
///               - media-hd
///           - fileName: manifest.mpd
///             type: DASH
///             muxStreams:
///               - video-only-sd
///               - video-only-hd
///               - audio-only
///         output:
///           uri: gs://${default.name}/outputs/
///       labels:
///         label: key
/// ```
///
///
/// ## Import
///
/// Job can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
///
/// * `{{project}} {{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Job can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:transcoder/job:Job default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:transcoder/job:Job default "{{project}} {{name}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:transcoder/job:Job default {{name}}
/// ```
class Job extends pulumi.CustomResource {
  /// The configuration for this template.
  /// Structure is documented below.
  late final pulumi.Output<JobConfig> config;
  /// The time the job was created.
  late final pulumi.Output<String> createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The time the transcoding finished.
  late final pulumi.Output<String> endTime;
  /// The labels associated with this job. You can use these to organize and group your jobs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the transcoding job resource.
  late final pulumi.Output<String> location;
  /// The resource name of the job.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The time the transcoding started.
  late final pulumi.Output<String> startTime;
  /// The current state of the job.
  late final pulumi.Output<String> state;
  /// Specify the templateId to use for populating Job.config.
  /// The default is preset/web-hd, which is the only supported preset.
  late final pulumi.Output<String> templateId;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_transcoder_job_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(
    String name, {
    JobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:transcoder/job:Job',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.config = registerOutput<JobConfig>('config');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.endTime = registerOutput<String>('endTime');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.templateId = registerOutput<String>('templateId');
  }
}
